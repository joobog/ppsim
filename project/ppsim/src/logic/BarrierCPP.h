#ifndef BARRIERCPP_H
#define BARRIERCPP_H

#include <condition_variable>
#include <mutex>
#include <atomic>

namespace ppsim {


class BarrierCPP
{
public:
	BarrierCPP(const long threshold) : thr{threshold}{}

	BarrierCPP& operator++() {
		using namespace std;

		if (counter.fetch_add(1) == thr) {
			step += 1;
			cv.notify_all();
			counter = 1;
		}
		else {
			unique_lock<mutex> lck{mtx};

			long s = step;
			// false - blocks thread, notification can not unblock the thread
			// true - notification can unblock the thread
			cv.wait(lck, [&]{return s == step;});

		}

		return *this;
	}

	const long set_threshold(const long threshold) {
	    if (threshold < 1) {
			thr = 1;
		}
		else {
			thr = threshold;
		}
		return thr;
	}

private:
	std::atomic<long> counter{1};
	std::mutex mtx{};
	std::condition_variable cv{};
	std::mutex test_mtx;
	long step{0};
	long thr;
};

} /* namespace ppsim */

#endif // BARRIERCPP_H
