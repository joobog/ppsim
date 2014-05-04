$doxydocs=
{
  classes => [
    {
      name => '_dictionary_',
      includes => {
        local => 'no',
        name => 'dictionary.h'
      },
      all_members => [
        {
          name => 'hash',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => '_dictionary_'
        },
        {
          name => 'key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => '_dictionary_'
        },
        {
          name => 'n',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => '_dictionary_'
        },
        {
          name => 'size',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => '_dictionary_'
        },
        {
          name => 'val',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => '_dictionary_'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'n',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'size',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Number of entries in dictionary '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'val',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Storage size '
                }
              ]
            },
            type => 'char **'
          },
          {
            kind => 'variable',
            name => 'key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'List of string values '
                }
              ]
            },
            type => 'char **'
          },
          {
            kind => 'variable',
            name => 'hash',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'List of string keys '
                }
              ]
            },
            type => 'unsigned *'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Dictionary object. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'text',
            content => 'This object contains a list of string/string associations. Each association is identified by a unique string key. Looking up values in the dictionary is speeded up by the use of a (hopefully collision-free) hash function. '
          }
        ]
      }
    },
    {
      name => 'ppsim::AboutWindow',
      base => [
        {
          name => 'Dialog',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'AboutWindow.h'
      },
      all_members => [
        {
          name => '_data',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_about_name',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_about_text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_about_title',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_desc_name',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_desc_text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_developers_name',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_developers_text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_license_name',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '_label_license_text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => 'AboutWindow',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AboutWindow'
        },
        {
          name => '~AboutWindow',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::AboutWindow'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'AboutWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~AboutWindow',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => '_data',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_about_title',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_desc_name',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_desc_text',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_about_name',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_about_text',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_developers_name',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_developers_text',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_license_name',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_license_text',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::AbstractWorld',
      includes => {
        local => 'no',
        name => 'AbstractWorld.h'
      },
      all_members => [
        {
          name => '_abstract_world',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_barrier',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_mutex_plant_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_mutex_pred_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_mutex_prey_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_new_predators',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_new_preys',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_num_of_threads',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_plant_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_plant_config_is_changed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_predator_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_predator_config_is_changed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_prey_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '_prey_config_is_changed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'AbstractWorld',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'calc_interval',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'count_cycles',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'create_abstract_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'cycle_counter',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'delete_abstract_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_neighbor_fields',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_number_of_threads',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_plant_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_pred_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_prey_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_size_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'get_size_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'interval_start_value',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'phase_model',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'push_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'push_predators_before_next_run',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'push_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'push_preys_before_next_run',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'run_cycle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'scale_plant_config_on_field',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'scale_pred_configs_on_field',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'scale_prey_configs_on_field',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'set_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'set_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'set_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => 'set_number_of_threads',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        },
        {
          name => '~AbstractWorld',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::AbstractWorld'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'push_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Adds a number of preys to to world in random order. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'New preys with random configs are created and pushed immediately on random positions in the world.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '(thread-safe)'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of preys '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'n',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'push_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Adds a number of predators to to world in random order. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'New predators with random configs are created and pushed immediately on random positions in the world.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '(thread-safe)'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of predators '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'n',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'AbstractWorld',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'size_x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the number of columns in the hex grid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'size_y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the number of rows in the hex grid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'plant_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the configuration object of a plant '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'prey_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the configuration object of a prey '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'predator_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the configuration object of a predator '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size_x',
                type => 'TIndex'
              },
              {
                declaration_name => 'size_y',
                type => 'TIndex'
              },
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig'
              },
              {
                declaration_name => 'prey_config',
                type => 'PreyConfig'
              },
              {
                declaration_name => 'predator_config',
                type => 'PredatorConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => '~AbstractWorld',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Destructor. '
                }
              ]
            },
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'create_abstract_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create abstract world. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'size_x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the number of columns in the hex grid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'size_y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the number of rows in the hex grid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'plant_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the configuration object of a plant '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'prey_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the configuration object of a prey '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'predator_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the configuration object of a predator '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size_x',
                type => 'TIndex'
              },
              {
                declaration_name => 'size_y',
                type => 'TIndex'
              },
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig'
              },
              {
                declaration_name => 'prey_config',
                type => 'PreyConfig'
              },
              {
                declaration_name => 'predator_config',
                type => 'PredatorConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => 'delete_abstract_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Delete abstract world. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'run_cycle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Start simulation (vicious cycle) '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cycles'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the number of cycles, that shoulb be simulated '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'phase_model',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Thread function (implements phase model). '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Implements phase modell:'
                },
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'Phase 0'
                      },
                      {
                        type => 'list',
                        style => 'itemized',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'update plant config objects'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'update prey config objects'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'update predator config objects'
                            }
                          ]
                        ]
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Phase 1'
                      },
                      {
                        type => 'list',
                        style => 'itemized',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'breed plants'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'eat plants'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'eat preys'
                            }
                          ]
                        ]
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Phase 2'
                      },
                      {
                        type => 'list',
                        style => 'itemized',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'choose direction'
                            }
                          ]
                        ]
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Phase 3'
                      },
                      {
                        type => 'list',
                        style => 'itemized',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'move creatures'
                            }
                          ]
                        ]
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Phase 4'
                      },
                      {
                        type => 'list',
                        style => 'itemized',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'finish moving creatures'
                            }
                          ]
                        ]
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Phase 5'
                      },
                      {
                        type => 'list',
                        style => 'itemized',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'increase age of organisms'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'make creatures hungry'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'generate offsprings'
                            }
                          ]
                        ]
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'and pointer to the object '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'thread_id',
                type => 'long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'count_cycles',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'current cycle '
                    }
                  ]
                }
              ]
            },
            type => 'const unsigned long',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_size_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of columns '
                    }
                  ]
                }
              ]
            },
            type => 'const int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_size_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of rows '
                    }
                  ]
                }
              ]
            },
            type => 'const int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_field',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a valid x position in the hex grid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is a valid y position in the hex grid '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to a field in the hex grid '
                    }
                  ]
                }
              ]
            },
            type => 'Field *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'TIndex'
              },
              {
                declaration_name => 'y',
                type => 'TIndex'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_neighbor_fields',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Calculate neighbors of a field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Neighbors are packed into a vector. Index is mapped to the position. Mapping is described by the table below:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '0: above right 1: right 2: bottom right 3: bottom left 4: left 5: above left'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'pos'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a position of a field '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '6 neighbors. Non-existent neighbors are set to nullptr. '
                    }
                  ]
                }
              ]
            },
            type => 'std::vector< Field * >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'pos',
                type => 'TPosition'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_number_of_threads',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of threads '
                    }
                  ]
                }
              ]
            },
            type => 'const long',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_number_of_threads',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'num_of_threads'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of threads. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of threads'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Number of threads is automatically set to the next possible value, if out of bounds. '
                }
              ]
            },
            type => 'const long',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'number_of_threads',
                definition_name => 'num_of_threads',
                type => 'const long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'push_preys_before_next_run',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Adds randomly a number of preys to the world. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'The preys aren\'t added immediately, but on the end of the simulation cycle. At the end of simulaton cycle the preys are added to the world and then the next simulation cycle is started.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of preys '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'n',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'push_predators_before_next_run',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Adds randomly a number of predators to the world. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'The predators aren\'t added immediately, but on the end of the simulation cycle. At the end of simulaton cycle the predators are added to the world and then the next simulation cycle is started.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of predators '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'n',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'New plant config isn\'t replace immediately on all plants. Plants are updated just before next simulation cycle.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'plant_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'new plant config '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'New prey config isn\'t replace immediately on all preys. Preys are updated just before next simulation cycle.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'prey_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'new prey config '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'prey_config',
                type => 'PreyConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'New predator config isn\'t replace immediately on all predators. Predatorss are updated just before next simulation cycle.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'predator_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'new predator config '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'predator_config',
                type => 'PredatorConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_plant_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to the plant configuration object '
                    }
                  ]
                }
              ]
            },
            type => 'PlantConfig *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_prey_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to the prey configuration object '
                    }
                  ]
                }
              ]
            },
            type => 'PreyConfig *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_pred_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to the predator configuration object '
                    }
                  ]
                }
              ]
            },
            type => 'PredatorConfig *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => '_abstract_world',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< std::vector< Field > >'
          },
          {
            kind => 'variable',
            name => '_num_of_threads',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'long'
          },
          {
            kind => 'variable',
            name => '_barrier',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Barrier'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'calc_interval',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Calculate interval of columns for a thread. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'threaad'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'id is a thread id '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'an interval of columns that should be processed by a thread '
                    }
                  ]
                }
              ]
            },
            type => 'SInterval',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'thread_id',
                type => 'long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'interval_start_value',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Calculate the start column for a thread. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'thread_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a thread id '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'start column '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'thread_id',
                type => 'long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale_plant_config_on_field',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale plant configs linearly of all plants on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'x-coordinate of the field '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'y-coordinate of the field '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'TIndex'
              },
              {
                declaration_name => 'y',
                type => 'TIndex'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale_prey_configs_on_field',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale prey configs linearly of all preys on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'x-coordinate of the field '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'y-coordinate of the field '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'TIndex'
              },
              {
                declaration_name => 'y',
                type => 'TIndex'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale_pred_configs_on_field',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale predator configs linearly of all predators on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'x-coordinate of the field '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'y-coordinate of the field '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'TIndex'
              },
              {
                declaration_name => 'y',
                type => 'TIndex'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'cycle_counter',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned long'
          },
          {
            kind => 'variable',
            name => '_mutex_plant_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex'
          },
          {
            kind => 'variable',
            name => '_mutex_prey_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex'
          },
          {
            kind => 'variable',
            name => '_mutex_pred_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex'
          },
          {
            kind => 'variable',
            name => '_plant_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PlantConfig'
          },
          {
            kind => 'variable',
            name => '_prey_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PreyConfig'
          },
          {
            kind => 'variable',
            name => '_predator_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PredatorConfig'
          },
          {
            kind => 'variable',
            name => '_plant_config_is_changed',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => '_prey_config_is_changed',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => '_predator_config_is_changed',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => '_new_preys',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_new_predators',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Abstract representation of the world. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'text',
            content => 'The world consists of a number of fields, that are ordered in a coordinate system. A routine assigns the fields to different threads, that move the fields from current state to the next state. Moving a field from one state to another means increasing age of creatures, growing plants, move creatures from one field to another, ... '
          }
        ]
      }
    },
    {
      name => 'AWorldUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'AWorldUnitTest.h'
      },
      all_members => [
        {
          name => '_aw',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'AWorldUnitTest'
        },
        {
          name => '_plant',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'AWorldUnitTest'
        },
        {
          name => '_pred',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'AWorldUnitTest'
        },
        {
          name => '_prey',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'AWorldUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'test_init',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'test_preys_eating',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => 'test_set_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        },
        {
          name => '~AWorldUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'AWorldUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'AWorldUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~AWorldUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'AWorldUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_init'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_init',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_preys_eating',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_plant',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::Plant *'
          },
          {
            kind => 'variable',
            name => '_prey',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::Prey *'
          },
          {
            kind => 'variable',
            name => '_pred',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::Predator *'
          },
          {
            kind => 'variable',
            name => '_aw',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::AbstractWorld *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Barrier',
      base => [
        {
          name => 'ppsim::LockBase',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Barrier.h'
      },
      all_members => [
        {
          name => '_cond_var',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Barrier'
        },
        {
          name => '_counter',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Barrier'
        },
        {
          name => '_mutex',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::LockBase'
        },
        {
          name => '_threshold',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Barrier'
        },
        {
          name => 'Barrier',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => 'get_counter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => 'get_threshold',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => 'LockBase',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::LockBase'
        },
        {
          name => 'operator++',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => 'operator++',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => 'set_threshold',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => '~Barrier',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Barrier'
        },
        {
          name => '~LockBase',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::LockBase'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Barrier',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'threshold',
                type => 'const long'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Barrier',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'operator++',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Barrier &',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'operator++',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Barrier',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_counter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const long',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_threshold',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const long',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_threshold',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const long',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'threshold',
                type => 'const long'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_cond_var',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'pthread_cond_t'
          },
          {
            kind => 'variable',
            name => '_counter',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'long'
          },
          {
            kind => 'variable',
            name => '_threshold',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'long'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::BarrierCPP',
      includes => {
        local => 'no',
        name => 'BarrierCPP.h'
      },
      all_members => [
        {
          name => 'BarrierCPP',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'counter',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'cv',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'mtx',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'operator++',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'set_threshold',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'step',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'test_mtx',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::BarrierCPP'
        },
        {
          name => 'thr',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::BarrierCPP'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'BarrierCPP',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'threshold',
                type => 'const long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator++',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'BarrierCPP &',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_threshold',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const long',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'threshold',
                type => 'const long'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'counter',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::atomic< long >',
            initializer => '{1}'
          },
          {
            kind => 'variable',
            name => 'mtx',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'cv',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::condition_variable',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'test_mtx',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex'
          },
          {
            kind => 'variable',
            name => 'step',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'long',
            initializer => '{0}'
          },
          {
            kind => 'variable',
            name => 'thr',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'long'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'BoundedUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'BoundedUnitTest.h'
      },
      all_members => [
        {
          name => 'BoundedUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'd',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'precision',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_01_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_01_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_01_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_02_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_02_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_02_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_03_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_03_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_03_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_04_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_04_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_addition_04_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_quotient_01_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_randomize_01_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_randomize_02_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_randomize_03_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_01_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_01_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_01_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_02_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_02_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_02_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_03_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_03_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_03_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_04_1_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_04_2_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'test_subtraction_04_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'testInit_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'testInit_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        },
        {
          name => 'ui',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'BoundedUnitTest'
        },
        {
          name => '~BoundedUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'BoundedUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'BoundedUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~BoundedUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'BoundedUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'testInit_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'testInit_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_01_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_02_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_03_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_04_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_01_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_02_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_03_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_04_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_01_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_02_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_03_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_addition_04_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_01_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_02_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_03_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_04_1_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_01_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_02_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_03_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_04_2_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_01_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_02_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_03_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_subtraction_04_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_randomize_01_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_randomize_02_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_randomize_03_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_quotient_01_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'testInit_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'testInit_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_01_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'test addition with zero '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_02_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'value inside the bounds '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_03_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value exactly on the upper bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_04_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value beyound the upper bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_01_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'test addition with zero '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_02_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'value inside the bounds '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_03_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value exactly on the upper bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_04_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value beyound the upper bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_01_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'test addition with zero '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_02_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'value inside the bounds '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_03_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value exactly on the upper bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_addition_04_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value beyound the upper bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_01_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test subraction with zero '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_02_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'value inside the bounds '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_03_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value exactly on the lower bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_04_1_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value beyound the lower bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_01_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_02_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'value inside the bounds '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_03_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value exactly on the lower bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_04_2_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value beyound the lower bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_01_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'test addition with zero '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_02_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'value inside the bounds '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_03_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value exactly on the lower bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_subtraction_04_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test value beyound the lower bound '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_randomize_01_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Randomize max - min = 0. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_randomize_02_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Randomize max - min = 1. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_randomize_03_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Randomize. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_quotient_01_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'test Quotient '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'ui',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::Bounded< unsigned int >'
          },
          {
            kind => 'variable',
            name => 'd',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::Bounded< double >'
          },
          {
            kind => 'variable',
            name => 'precision',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::C2DVector',
      includes => {
        local => 'no',
        name => 'C2DVector.h'
      },
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'T',
          definition_name => 'T'
        }
      ],
      all_members => [
        {
          name => 'add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'add',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'C2DVector',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'C2DVector',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'mirror_h',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'mirror_h_v',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'mirror_v',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'operator+',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'operator-',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'operator=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'set_point',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'toString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => 'y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        },
        {
          name => '~C2DVector',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::C2DVector'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'C2DVector',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'C2DVector',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'T'
              },
              {
                declaration_name => 'y',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => '~C2DVector',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_point',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'T'
              },
              {
                declaration_name => 'y',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator+',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const C2DVector< T >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'const C2DVector &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator-',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const C2DVector< T >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'const C2DVector &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'add',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const C2DVector< T >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'v',
                type => 'const C2DVector &'
              },
              {
                declaration_name => 'bound_tl',
                type => 'const C2DVector &'
              },
              {
                declaration_name => 'bound_br',
                type => 'const C2DVector &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator=',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'const C2DVector &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'mirror_h_v',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< T >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'mirror_h',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< T >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'mirror_v',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< T >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'toString',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::string',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'T'
          },
          {
            kind => 'variable',
            name => 'y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'T'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'add',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'T',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'T'
              },
              {
                declaration_name => 'q',
                type => 'T'
              },
              {
                declaration_name => 'b1',
                type => 'T'
              },
              {
                declaration_name => 'b2',
                type => 'T'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Template class that defines a vector. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::Cell',
      includes => {
        local => 'no',
        name => 'Cell.h'
      },
      all_members => [
        {
          name => '_inn_r',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => '_out_r',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'Cell',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'center',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Cell'
        },
        {
          name => 'compute_corners',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Cell'
        },
        {
          name => 'corners',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Cell'
        },
        {
          name => 'draw_cell',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'get_center',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'get_inner_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'get_outer_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'new_cell',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'recalc_cell_points',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'recalc_cell_points',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        },
        {
          name => 'set_outer_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Cell'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Cell',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'constructor '
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'recalc_cell_points',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Recalculate coordinates on the cell, when radius changes. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the position of the hex-field on the x-axis '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the position of the hex-field on the y-axis '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'out_r'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the outer radius of the cell'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Uses position and outer radius to calculate corners. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'recalc_cell_points',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Recalculate coordinates on the cell, when radius changes. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'center'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the point on the map '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'out_r'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the outer radius of the cell'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Uses center point and outer radius to calculate corners. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'center',
                type => 'TPoint'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_cell',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Draw this cell in the world map. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Draws:'
                },
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'hexagon area (green field)'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'number of predators in red'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'number of preys in black'
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'cr'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a pointer to the cairo context, where the world is drawn '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'field'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'provides information how the cell to be drawn '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cr',
                type => 'const Cairo::RefPtr< Cairo::Context > &'
              },
              {
                declaration_name => 'field',
                type => 'Field *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'new_cell',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Clone cell. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'direction'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'indicates where the cell should be placed '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a new cell '
                    }
                  ]
                }
              ]
            },
            type => 'Cell',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'direction',
                type => 'EDirection'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_center',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TPoint',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_outer_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const TSize',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_inner_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const TSize',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'set_outer_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out_r',
                type => 'const TSize'
              }
            ]
          }
        ]
      },
      public_static_members => {
        members => [
          {
            kind => 'variable',
            name => '_out_r',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static TSize',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => '_inn_r',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static TSize',
            initializer => '= 0'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'compute_corners',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Computer the corners of the cell. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'center',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TPoint'
          },
          {
            kind => 'variable',
            name => 'corners',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< TPoint >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the field. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'CellUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'CellUnitTest.h'
      },
      all_members => [
        {
          name => '_cell',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CellUnitTest'
        },
        {
          name => 'CellUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => 'test_recalc_cell_center',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        },
        {
          name => '~CellUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'CellUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CellUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~CellUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'CellUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_recalc_cell_center'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_recalc_cell_center',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_cell',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::Cell *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Countable',
      includes => {
        local => 'no',
        name => 'Countable.h'
      },
      template_parameters => [
        {
          type => 'typename',
          declaration_name => 'O',
          definition_name => 'O'
        },
        {
          type => 'typename T',
          default => 'long'
        }
      ],
      all_members => [
        {
          name => 'aged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => 'Countable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => 'eaten',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => 'starved',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => 'total',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => 'underfed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => 'value_type',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        },
        {
          name => '~Countable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Countable'
        }
      ],
      public_typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'value_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'T'
          }
        ]
      },
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Countable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Countable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_static_members => {
        members => [
          {
            kind => 'variable',
            name => 'total',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static Counter< T >'
          },
          {
            kind => 'variable',
            name => 'aged',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static Counter< T >',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'eaten',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static Counter< T >',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'starved',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static Counter< T >',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'underfed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static Counter< T >',
            initializer => '{}'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Thread-safe statistics counter. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'text',
            content => 'If a class extends this class it gets the ability to count its own instances, death statistics (ageing, starvation, underfeeding and kills). '
          }
        ]
      }
    },
    {
      name => 'ppsim::Counter',
      includes => {
        local => 'no',
        name => 'Counter.h'
      },
      template_parameters => [
        {
          type => 'typename T'
        }
      ],
      all_members => [
        {
          name => '_counter',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Counter'
        },
        {
          name => 'count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Counter'
        },
        {
          name => 'Counter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Counter'
        },
        {
          name => 'decrease',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Counter'
        },
        {
          name => 'increase',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Counter'
        },
        {
          name => 'reset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Counter'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Counter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'count',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const T',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'increase',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'decrease',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'reset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_counter',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::atomic< T >',
            initializer => '{0}'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Creature',
      base => [
        {
          name => 'ppsim::Organism',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::CreatureConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ppsim::Predator',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Prey',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Creature.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          ambiguity_scope => 'ppsim::',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_next_field',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Creature'
        },
        {
          name => 'Creature',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::Creature'
        },
        {
          name => 'CreatureConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'eat',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_living_state',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_next_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_raw_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'is_hungry',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'kill',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'living_state',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Creature'
        },
        {
          name => 'next_vital_state',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_next_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => '~Creature',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => '~Creature',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'next_vital_state',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Compute vital state (satiation, energy, age) for the next cycle. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'list',
                  style => 'itemized',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'Mark creature as aged, if age is greater as max age.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Mark creature as starved, if satiation falls under half of the maximum satiation.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Mark creature as underfed, if energy level falls under half of the maximum energy. '
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'is_hungry',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Check if a creature is hungry or not. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'A creature is hungry, if satiation level falls under the half of the maximal satiation'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if creature is hungry, else false '
                    }
                  ]
                }
              ]
            },
            type => 'virtual const bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'kill',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Mark creature as killed. '
                }
              ]
            },
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'eat',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Let a creature eat an organism. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'When a creature eats an organism, it gets its energy. The energy, that the creature eats, is taken away from the organism. The organism is not destroyed, when it is eaten. '
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'org',
                type => 'Organism *'
              }
            ],
            reimplemented_by => [
              {
                name => 'eat'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_living_state',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Check the living state of the creature. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'If creature is death, the function returns also the reason why it is death.'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'living state of creature. '
                    }
                  ]
                }
              ]
            },
            type => 'virtual const LivingState',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_next_field',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Adapt the internal state of a creature to the new configuration. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'When max values of satiation, energy or/and age are change, the current values of scaled linearly to the max values.Getter. Get the field, where the creature intends to jump on the next simulation cycle.'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to the field '
                    }
                  ]
                }
              ]
            },
            type => 'Field *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_next_field',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. Set the field, the creature shall jump to on the next simulation cycle. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'field',
                type => 'Field *'
              }
            ]
          }
        ]
      },
      protected_methods => {
        members => [
          {
            kind => 'function',
            name => 'Creature',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constuctor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_next_field',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Field *'
          },
          {
            kind => 'variable',
            name => 'living_state',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'LivingState'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Behaviour of creatures. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::CreatureConfig',
      base => [
        {
          name => 'ppsim::OrganismConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ppsim::Creature',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::PredatorConfig',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::PreyConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'CreatureConfig.h'
      },
      all_members => [
        {
          name => '_age',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => '_birth_rate',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => '_satiation',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => '_satiation_consumption',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'CreatureConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CreatureConfig',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'scale_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale age linearly to the new maximum value. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'max_age'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'new limit for maximum age '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max_age',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale satiation linearly to the new maximum value. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'max_satiation'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'new limit for satiation. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max_satiation',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'randomize_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_max_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_raw_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const TBoundedUI',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_max_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_raw_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const TBoundedUI',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_raw_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual TBoundedUI',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_satiation_consumption',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_energy_consumption',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_birth_rate',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const double',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'age',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'age',
                type => 'const TBoundedUI &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_max_age',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max_age',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'satiation',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'satiation',
                type => 'const TBoundedUI &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_max_satiation',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max_satiation',
                type => 'unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_satiation_consumption',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'satiation_consumption',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_energy_consumption',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'energy_consumption',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_birth_rate',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'birth_rate',
                type => 'const double'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_age',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TBoundedUI'
          },
          {
            kind => 'variable',
            name => '_satiation',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TBoundedUI'
          },
          {
            kind => 'variable',
            name => '_birth_rate',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          },
          {
            kind => 'variable',
            name => '_energy_consumption',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          },
          {
            kind => 'variable',
            name => '_satiation_consumption',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'classppsim_1_1_creature',
            content => 'Creature'
          },
          {
            type => 'text',
            content => ' configuration. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'Gtk::Dialog',
      derived => [
        {
          name => 'ppsim::AboutWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Gtk::DrawingArea',
      derived => [
        {
          name => 'ppsim::Graph',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::VisualWorld',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Field',
      includes => {
        local => 'no',
        name => 'Field.h'
      },
      all_members => [
        {
          name => '_arrived_predators',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => '_arrived_preys',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => '_plant',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => '_predators',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => '_preys',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'append_to_arrived_predators',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'append_to_arrived_preys',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'choose_direction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'count_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'count_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'Field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'finish_move',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'generate_offsprings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'get_plant',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'get_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'get_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'has_plant',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'has_predator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'has_prey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'increase_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'lock_arrived_predators',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'lock_arrived_preys',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'lock_predators_size',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'lock_preys_size',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Field'
        },
        {
          name => 'move',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'predators_eat_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'preys_eat_plants',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'push',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'push',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'replace_plant',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'scale_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'scale_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => 'scale_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        },
        {
          name => '~Field',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Field'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Field',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Field',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Destructor. '
                }
              ]
            },
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'replace_plant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Replace plant on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'plant'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a pointer to a plant'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'The plant on the field is destroyed, when it is replaced. Replacing the by the same plant has no effect. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'plant',
                type => 'SPPlant'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_plant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'pointer'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'to the plant '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'SPPlant',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'return'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'all preys located on this field'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'For unit tests only. '
                }
              ]
            },
            type => 'PreyList *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'return'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'all predators located on this field'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'For unit tests only. '
                }
              ]
            },
            type => 'PredatorList *',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'push',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Push a new prey on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'prey'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'that shall be pushed on the field'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'If a preys is pushed on the field, it would not like to move, but stay on the field. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'prey',
                type => 'SPPrey &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'push',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Push a new predator on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'predator'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'that shall be pushed on the field.'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'If a predator is pushed on the field, it would not like to move, but stay on the field. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'predator',
                type => 'SPPredator &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'has_predator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Check if at least one predator is on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if at least one predator is on the field, else false '
                    }
                  ]
                }
              ]
            },
            type => 'const bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'has_prey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Check if at least one prey is on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if at least one prey is on the field, else false '
                    }
                  ]
                }
              ]
            },
            type => 'const bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'has_plant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Check if plants are on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'false if no plants are on the field, else true. '
                    }
                  ]
                }
              ]
            },
            type => 'const bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'scale_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale plant config. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'plant_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a new plant config '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'plant_config',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale prey configs of all preys on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'prey_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a new prey config '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'prey_config',
                type => 'const PreyConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale predator configs of all predators on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'predator_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a new predator config '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'predator_config',
                type => 'const PredatorConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'count_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Count preys on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of preys '
                    }
                  ]
                }
              ]
            },
            type => 'const size_t',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'count_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Count predators on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of predators '
                    }
                  ]
                }
              ]
            },
            type => 'const size_t',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'preys_eat_plants',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Let preys eat plants. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'predators_eat_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Let predators eat preys. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'generate_offsprings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Try to create offsprings for all creatures. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'This simulator makes no difference between male and female creatures. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'increase_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Increase age of all organisms on the field. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Creatures can die for some reason, when the age increases. In this case this function increases the corresponding death counter. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'choose_direction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'First step of moving creatures. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'neighbors'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Creatures choose the direction where they like to move on the next simulation cycle. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'neighbors',
                type => 'std::vector< Field * >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'move',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Second step of moving creatures. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Move creatures to the field, they have chosen. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'finish_move',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Third (last) phase of moving creatures. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Creatures are moved from the incoming queue to the outgoing queue. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'append_to_arrived_preys',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Part of the second step of moving creatures. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'pointer'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'to the prey'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Add a prey to the incoming queue. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => '_prey',
                definition_name => 'prey',
                type => 'SPPrey &&'
              }
            ]
          },
          {
            kind => 'function',
            name => 'append_to_arrived_predators',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Part of the second step of moving creatures. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'pointer'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'to the predator'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Add a predator to the predator incoming queue. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'predator',
                type => 'SPPredator &&'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_predators',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PredatorList'
          },
          {
            kind => 'variable',
            name => '_preys',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PreyList'
          },
          {
            kind => 'variable',
            name => '_arrived_predators',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PredatorList'
          },
          {
            kind => 'variable',
            name => '_arrived_preys',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PreyList'
          },
          {
            kind => 'variable',
            name => '_plant',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'SPPlant'
          },
          {
            kind => 'variable',
            name => 'lock_arrived_preys',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex'
          },
          {
            kind => 'variable',
            name => 'lock_arrived_predators',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::mutex'
          },
          {
            kind => 'variable',
            name => 'lock_preys_size',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'pthread_rwlock_t'
          },
          {
            kind => 'variable',
            name => 'lock_predators_size',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'pthread_rwlock_t'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Definition of the field. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'FieldUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'FieldUnitTest.h'
      },
      all_members => [
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'FieldUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_choose_direction_preds',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_choose_direction_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_count_organisms',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_get_set_organisms',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_init',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_move',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_preds_eat_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_preys_death',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_preys_eat_plants',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_update_plant',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_update_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => 'test_update_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        },
        {
          name => '~FieldUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'FieldUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'FieldUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~FieldUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'FieldUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_init'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_get_set_organisms'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_count_organisms'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_choose_direction_preds'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_choose_direction_preys'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_move'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_preys_eat_plants'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_preds_eat_preys'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_update_plant'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_update_preys'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_update_predators'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_preys_death'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_init',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_get_set_organisms',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_count_organisms',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_choose_direction_preds',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_choose_direction_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_move',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_preys_eat_plants',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_preds_eat_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_update_plant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_update_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_update_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_preys_death',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'FilePtr',
      includes => {
        local => 'no',
        name => 'FilePtr.h'
      },
      all_members => [
        {
          name => 'file',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'FilePtr'
        },
        {
          name => 'FilePtr',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FilePtr'
        },
        {
          name => '~FilePtr',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'FilePtr'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'FilePtr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const std::string'
              },
              {
                declaration_name => 'access',
                type => 'const std::string'
              }
            ]
          },
          {
            kind => 'function',
            name => '~FilePtr',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'file',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'FILE *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Graph',
      base => [
        {
          name => 'DrawingArea',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Graph.h'
      },
      all_members => [
        {
          name => '_cont_pos',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_cont_zoom',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_is_enabled',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_max_values',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_num_values',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_sim_size',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_values',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_visible_position',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => '_visible_range',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::Graph'
        },
        {
          name => 'append',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'cairo_context',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::Graph'
        },
        {
          name => 'clear',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'disable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'draw_line',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'enable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'export_to_file',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'find_max',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'force_redraw',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'get_curr_size',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'get_max_size',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'get_visible_position',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'get_visible_range',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'Graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'is_enabled',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'on_draw',
          virtualness => 'virtual',
          protection => 'protected',
          scope => 'ppsim::Graph'
        },
        {
          name => 'set_cont_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'set_cont_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'set_interval_size',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'set_visible_position',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => 'set_visible_range',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        },
        {
          name => '~Graph',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Graph'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Graph',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Destructor. '
                }
              ]
            },
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'append',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Add new entry to statistics. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'preys_total'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of preys in the world '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preys_aged'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of aged preys '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preys_killed'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of killed preys '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preys_starved'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of starved preys '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preds_underfed'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of underfed preys '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preds_aged'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of predators in the world '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preds_killed'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of killed predators '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preds_starved'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of starved predators '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'preds_underfed'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of underfed predators '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'preys_total',
                type => 'const size_t'
              },
              {
                declaration_name => 'preys_aged',
                type => 'const size_t'
              },
              {
                declaration_name => 'preys_killed',
                type => 'const size_t'
              },
              {
                declaration_name => 'preys_starved',
                type => 'const size_t'
              },
              {
                declaration_name => 'preys_underfed',
                type => 'const size_t'
              },
              {
                declaration_name => 'preds_total',
                type => 'const size_t'
              },
              {
                declaration_name => 'preds_aged',
                type => 'const size_t'
              },
              {
                declaration_name => 'preds_killed',
                type => 'const size_t'
              },
              {
                declaration_name => 'preds_starved',
                type => 'const size_t'
              },
              {
                declaration_name => 'preds_underfed',
                type => 'const size_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_line',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Draw line. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cr'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a cairo context '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'values'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'that shall be drawn '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'max'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'max value on the y-axis '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'start'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the first value of an interval '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'end'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the last value of an interval'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Draws a line based on the values in the interval [start, end]. The line is scaled automatically on the y-axis and x-axis.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The resolution of the line is also scaled automatically. The number of values taken into account never exceeds the number of points on x-axis of the cairo context. Therefore the line is drawn in constant time. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cr',
                type => 'const Cairo::RefPtr< Cairo::Context > &'
              },
              {
                declaration_name => 'values',
                type => 'TValues &'
              },
              {
                declaration_name => 'max',
                type => 'TValue'
              },
              {
                declaration_name => 'start',
                type => 'size_t'
              },
              {
                declaration_name => 'end',
                type => 'size_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'force_redraw',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Redraw population development. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_interval_size',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size',
                type => 'unsigned long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_max_size',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of entries that can be stored '
                    }
                  ]
                }
              ]
            },
            type => 'TValues::size_type',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_curr_size',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number of stored entries '
                    }
                  ]
                }
              ]
            },
            type => 'TValues::size_type',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_visible_range',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'range'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a number of visible entries'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Sets the size of the visible interval. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'range',
                type => 'TValues::size_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_visible_position',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'position'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the index of the first visible entry'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Sets the start of the visible interval. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'range',
                definition_name => 'position',
                type => 'TValues::size_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_cont_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cont_pos'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'activates this feature if true'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Draw tail of the graph. The size of the tail is determined by the range. Update the graph continously. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cont_pos',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_cont_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cont_zoom'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'activates this feature if true'
                      }
                    ]
                  }
                ],
                {
                  type => 'text',
                  content => 'Draw the complete development of the population. Update the graph continously. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cont_zoom',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'export_to_file',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Export statistics to a CSV-file. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'filename'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the name of the file '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'clear',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Clear statistics. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'find_max',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Find max value in a collection of data. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'values'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'are a collection of data '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'start'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the first value of an interval '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'end'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the last value of an interval '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'maximum value'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Finds max value in a collection of data in an interval [start, end] '
                }
              ]
            },
            type => 'TValue',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'values',
                type => 'TValues &'
              },
              {
                declaration_name => 'start',
                type => 'TValue'
              },
              {
                declaration_name => 'end',
                definition_name => 'e',
                type => 'TValue'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_visible_range',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the size of the visible range '
                    }
                  ]
                }
              ]
            },
            type => 'TValues::size_type',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_visible_position',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the index of the first entry of the visible range '
                    }
                  ]
                }
              ]
            },
            type => 'TValues::size_type',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'enable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Enable visualization of graph. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'disable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Disable visualization of graph. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'is_enabled',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Getter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'true'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'if visualization is enabled, else false '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      protected_methods => {
        members => [
          {
            kind => 'function',
            name => 'on_draw',
            virtualness => 'virtual',
            protection => 'protected',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cr'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a pointer to the cairo context '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'always true'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Draws population development (of preys and predators) in the cairo context object. '
                }
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cr',
                type => 'const Cairo::RefPtr< Cairo::Context > &'
              }
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => 'cairo_context',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Cairo::RefPtr< Cairo::Context >'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_is_enabled',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => '_cont_pos',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => '_cont_zoom',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => '_num_values',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_values',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TValues *'
          },
          {
            kind => 'variable',
            name => '_max_values',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TValue *'
          },
          {
            kind => 'variable',
            name => '_sim_size',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TValues::size_type'
          },
          {
            kind => 'variable',
            name => '_visible_range',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TValues::size_type'
          },
          {
            kind => 'variable',
            name => '_visible_position',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TValues::size_type'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the graph. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'text',
            content => 'The graph shows population development of preys and predators.'
          },
          {
            type => 'list',
            style => 'ordered',
            content => [
              [
                {
                  type => 'text',
                  content => 'It scales automatically the y-axis for both populations independently.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'It is able to move the line to last values. This feature can be switched on and off.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'It is able to zoom automatically to the whole range of values. This feature can be switch on and off. '
                }
              ]
            ]
          }
        ]
      }
    },
    {
      name => 'ppsim::Helpers',
      includes => {
        local => 'no',
        name => 'Helpers.h'
      },
      all_members => [
        {
          name => 'Helpers',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Helpers'
        },
        {
          name => 'to_str',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Helpers'
        },
        {
          name => '~Helpers',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Helpers'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Helpers',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Helpers',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'to_str',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Convert a string to integer. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is a number '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'x converted to string '
                    }
                  ]
                }
              ]
            },
            type => 'static std::string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'T'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Definition of often used functions. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::IniParser',
      includes => {
        local => 'no',
        name => 'IniParser.h'
      },
      all_members => [
        {
          name => '_abs_filename',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::IniParser'
        },
        {
          name => '_ini',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'dump',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'dump_ini',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'get_bool',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'get_int',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'get_string',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'IniParser',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => 'set',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        },
        {
          name => '~IniParser',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::IniParser'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'IniParser',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => '~IniParser',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'dump',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dump_ini',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'entry',
                type => 'const char *'
              },
              {
                declaration_name => 'value',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_bool',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'not_found',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_int',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'not_found',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_string',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'def',
                type => 'const char *'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_ini',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'dictionary *'
          },
          {
            kind => 'variable',
            name => '_abs_filename',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::string'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Wrapper to the iniparser. (Incomplete) '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'text',
            content => 'Only needed functions were wrapped. This wrapper is incomplete. The original ini parser was written in C and can be downloaded from this website:'
          },
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            content => 'http://ndevilla.free.fr/iniparser/'
          },
          {
            type => 'text',
            content => ' '
          }
        ]
      }
    },
    {
      name => 'ppsim::LivingState',
      includes => {
        local => 'no',
        name => 'LivingState.h'
      },
      all_members => [
        {
          name => '_state',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'aged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'alive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'get_state',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'killed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'LivingState',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'operator!=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'operator==',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'starved',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        },
        {
          name => 'underfed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::LivingState'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'get_state',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const LivingState',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'operator==',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ls',
                type => 'const LivingState &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator!=',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ls',
                type => 'const LivingState &'
              }
            ]
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'alive',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static LivingState',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'killed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static LivingState',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'starved',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static LivingState',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'underfed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static LivingState',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'aged',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static LivingState',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'LivingState',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'state',
                type => 'LIVING_STATE'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_state',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'LIVING_STATE'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Living states of a creature. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::Lock',
      base => [
        {
          name => 'ppsim::LockBase',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Lock.h'
      },
      all_members => [
        {
          name => '_mutex',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::LockBase'
        },
        {
          name => 'Lock',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Lock'
        },
        {
          name => 'lock',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Lock'
        },
        {
          name => 'LockBase',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::LockBase'
        },
        {
          name => 'unlock',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Lock'
        },
        {
          name => '~Lock',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Lock'
        },
        {
          name => '~LockBase',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::LockBase'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Lock',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Lock',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'lock',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'unlock',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::LockBase',
      derived => [
        {
          name => 'ppsim::Barrier',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Lock',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'LockBase.h'
      },
      all_members => [
        {
          name => '_mutex',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::LockBase'
        },
        {
          name => 'LockBase',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::LockBase'
        },
        {
          name => '~LockBase',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::LockBase'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => '~LockBase',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      protected_methods => {
        members => [
          {
            kind => 'function',
            name => 'LockBase',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => '_mutex',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'pthread_mutex_t'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::MainWindow',
      base => [
        {
          name => 'Window',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'MainWindow.h'
      },
      all_members => [
        {
          name => '__pad0__',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '__pad1__',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_adj_graph_vis_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_adj_graph_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_adj_world_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_button_graph_vis_clear',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_button_pred_push_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_button_prey_push_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_button_sim_next_cycle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_button_sim_start_stop',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_button_world_size_change',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_check_button_graph_vis_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_check_button_graph_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_conn_start_stop',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_activate_control',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_deactivate_control',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_frame_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_set_start_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_set_stop_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_stop',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_update_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_visualize_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_dispatcher_visualize_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_graph_vis_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_graph_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_plant_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_plant_max_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_birth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_max_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_max_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_max_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_push_n_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_pred_satiation_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_birth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_max_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_max_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_max_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_push_n_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_prey_satiation_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_sim_cycles',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_sim_number_of_threads',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_world_pred_init_number',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_world_prey_init_number',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_world_size_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_world_size_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_entry_world_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_info_dead_stat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_info_pop_stat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_info_sim',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_pred',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_prey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_frame_simulation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_control_buttons',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_graph_vis',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_info_dead_stat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_info_pop_stat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_info_sim',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_plant_param',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_pred_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_prey_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_sim_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_grid_world_vis_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_hpaned_main',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_ini_parser',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_graph_vis_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_graph_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_aged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_cycle_counter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_cycle_counter_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_dead_stat_preds',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_dead_stat_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_duration',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_duration_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_eaten',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_frame_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_frame_rate_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_pop_stat_preds',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_pop_stat_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preds_aged_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preds_eaten_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preds_starved_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preds_total_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preds_underfed_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preys_aged_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preys_eaten_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preys_starved_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preys_total_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_preys_underfed_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_starved',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_time_start',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_time_start_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_time_stop',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_time_stop_display',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_total',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_info_underfed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_plant_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_plant_max_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_birth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_max_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_max_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_max_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_push_n_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_pred_satiation_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_birth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_max_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_max_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_max_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_push_n_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_prey_satiation_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_sim_cycles',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_sim_number_of_threads',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_world_pred_init_number',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_world_prey_init_number',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_world_size_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_world_size_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_label_world_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_ref_toggle_action_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_ref_toggle_action_stats',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_ref_toggle_action_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_refActionGroup',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_refUIManager',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_scale_graph_vis_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_scale_graph_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_scale_world_vis_zoom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_start_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_stop_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_sw_ci_panel',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_sw_statistics',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_sw_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_thread',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vbox_control',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vbox_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vbox_main',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vbox_simulation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vbox_world_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vbox_world_vis_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '_vpaned_main',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'activate_control',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'close_sim',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'compute_visual_area',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'create_plant_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'create_predator_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'create_prey_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'deactivate_control',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'entry_to_value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'hbox',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'load_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'MainWindow',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'notebook_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_action_export',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_adj_world_zoom_value_changed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_graph_vis_clear_clicked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_pred_push_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_prey_push_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_sim_next_cycle_clicked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_sim_start_clicked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_sim_stop_clicked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_button_world_size_change',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_check_button_graph_vis_pos_clicked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_check_button_graph_vis_zoom_clicked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_delete_event',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_graph_vis_pos_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_graph_vis_pos_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_graph_vis_zoom_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_graph_vis_zoom_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_plant_growth_rate_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_plant_growth_rate_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_plant_max_energy_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_plant_max_energy_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_birth_rate_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_birth_rate_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_energy_consumption_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_energy_consumption_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_max_age_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_max_age_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_max_energy_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_max_energy_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_max_satiation_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_max_satiation_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_satiation_consumption_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_pred_satiation_consumption_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_birth_rate_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_birth_rate_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_energy_consumption_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_energy_consumption_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_max_age_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_max_age_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_max_energy_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_max_energy_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_max_satiation_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_max_satiation_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_satiation_consumption_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_prey_satiation_consumption_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_sim_number_of_threads_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_sim_number_of_threads_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_pred_init_number_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_pred_init_number_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_prey_init_number_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_prey_init_number_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_size_x_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_size_x_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_size_y_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_size_y_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_vis_zoom_activate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_entry_world_vis_zoom_focus_out_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_graph_pos_value_changed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_graph_zoom_value_changed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_sw_visual_world_signal_scroll_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_sw_visual_world_value_changed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_toggle_action_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_toggle_action_stats',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'on_toggle_action_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'save_settings',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'set_start_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'set_stop_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'show_about',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'sync_world_adj',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'update_frame_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'update_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'update_plants',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'update_predators',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'update_preys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'visualize_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'visualize_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => 'work_thread',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        },
        {
          name => '~MainWindow',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::MainWindow'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'MainWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~MainWindow',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Destructor. '
                }
              ]
            },
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'save_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Save setting to an INI file. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'load_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Load setting from an INI file. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_action_export',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Export simulation results to CSV file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Exports total population and death statistics of preys and predators. To death statistics belongs aged, starved and eaten creatures. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'close_sim',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Close program. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'show_about',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_toggle_action_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_toggle_action_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_toggle_action_stats',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_sim_start_clicked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. Start simulation. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_sim_stop_clicked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Stop simulation. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_sim_next_cycle_clicked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Execute one simulation cycle. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_sim_number_of_threads_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. Pass number of threads to abstract world. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_sim_number_of_threads_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. Pass number of threads to abstract world. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_size_x_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_size_x_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_size_y_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_size_y_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_world_size_change',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_prey_init_number_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_prey_init_number_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_pred_init_number_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_pred_init_number_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_plant_max_energy_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_plant_max_energy_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_plant_growth_rate_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_plant_growth_rate_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_birth_rate_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_birth_rate_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_energy_consumption_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_energy_consumption_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_satiation_consumption_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_satiation_consumption_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_max_age_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_max_age_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_max_satiation_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_max_satiation_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_max_energy_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_prey_max_energy_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_prey_push_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_birth_rate_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_birth_rate_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_energy_consumption_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_energy_consumption_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_satiation_consumption_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_satiation_consumption_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_max_age_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_max_age_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_max_satiation_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_max_satiation_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_max_energy_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_pred_max_energy_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_pred_push_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_sw_visual_world_signal_scroll_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Recompute visible area of hex grid when window size changes. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'Gtk::Allocation &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_sw_visual_world_value_changed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_vis_zoom_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_world_vis_zoom_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_adj_world_zoom_value_changed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Zoom the world. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_graph_vis_zoom_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_graph_vis_zoom_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_graph_zoom_value_changed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_check_button_graph_vis_zoom_clicked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_graph_vis_pos_focus_out_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventFocus *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'on_entry_graph_vis_pos_activate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Define the position. The graph is drawn from this position on. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_graph_pos_value_changed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_check_button_graph_vis_pos_clicked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'toggle check button'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'modify draw parameter'
                      },
                      {
                        type => 'list',
                        style => 'ordered',
                        content => [
                          [
                            {
                              type => 'text',
                              content => 'draw last values'
                            }
                          ],
                          [
                            {
                              type => 'text',
                              content => 'draw from a certain position '
                            }
                          ]
                        ]
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_button_graph_vis_clear_clicked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'clear graph'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'reset counters '
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_delete_event',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Close program by delete event. '
                }
              ]
            },
            detailed => {},
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'GdkEventAny *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'work_thread',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Run simulation. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Thread function. Runs outside the GUI-Threads to improve responsiveness of the GUI. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'long',
                definition_name => 'run_size',
                type => 'unsigned'
              }
            ]
          },
          {
            kind => 'function',
            name => 'compute_visual_area',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Determine the part of the world, that should be drawn. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'sync_world_adj',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Synchronize world zoom adjustment. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_start_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Update start time of the simulation run in the GUI. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_stop_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Update stop time of the simulation run in the GUI. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'visualize_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Visualize (redraw) world. Called by a dispatcher. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'visualize_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Visualize (redraw) graph. Called by dispatcher. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'activate_control',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Activate non-runtime-capable widgets. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'deactivate_control',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Deactivate non-runtime-capable widgets. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'update_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Update cycle counter and death statistics on the GUI. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'update_frame_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. Update frame rate (GUI). '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'frame_rate'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is cycles/time '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'frame_rate',
                type => 'float'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_plant_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create a plant config object from GUI. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'plant configuration object '
                    }
                  ]
                }
              ]
            },
            type => 'PlantConfig',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'create_prey_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create a prey config object from GUI. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'prey configuration object '
                    }
                  ]
                }
              ]
            },
            type => 'PreyConfig',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'create_predator_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Signal handler. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'predator configuration object '
                    }
                  ]
                }
              ]
            },
            type => 'PredatorConfig',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'update_plants',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Pass new plant config to the simulation. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Extract the plant configuration object from the GUI and apply it to all plants. The configuration of plants is scaled (not replaced).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Thread-safe. Can be called during the simulation. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'update_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Update configuration of all preys. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Extract a new prey configuration object from the GUI and apply to all preys. The configuration of preys is scaled (not replaced).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Thread-safe. Can be called during the simulation. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'update_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Update configuration of all predators. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Extract a new predator configuration object from the GUI and apply to all predators. The configuration of predators is scaled (not replaced).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Thread-safe. Can be called during the simulation. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => '__pad0__',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PROTECTED'
          },
          {
            kind => 'variable',
            name => '_vbox_main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Box'
          },
          {
            kind => 'variable',
            name => '_vpaned_main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Paned'
          },
          {
            kind => 'variable',
            name => '_refUIManager',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::UIManager >'
          },
          {
            kind => 'variable',
            name => '_refActionGroup',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::ActionGroup >'
          },
          {
            kind => 'variable',
            name => '_ref_toggle_action_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::ToggleAction >'
          },
          {
            kind => 'variable',
            name => '_ref_toggle_action_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::ToggleAction >'
          },
          {
            kind => 'variable',
            name => '_ref_toggle_action_stats',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::ToggleAction >'
          },
          {
            kind => 'variable',
            name => '_hpaned_main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Paned'
          },
          {
            kind => 'variable',
            name => '_sw_ci_panel',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::ScrolledWindow'
          },
          {
            kind => 'variable',
            name => '_vbox_control',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Box'
          },
          {
            kind => 'variable',
            name => '_frame_simulation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_vbox_simulation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Box'
          },
          {
            kind => 'variable',
            name => '_grid_control_buttons',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_button_sim_start_stop',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Button'
          },
          {
            kind => 'variable',
            name => '_conn_start_stop',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'sigc::connection'
          },
          {
            kind => 'variable',
            name => '_button_sim_next_cycle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Button'
          },
          {
            kind => 'variable',
            name => '_grid_sim_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_sim_cycles',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_sim_cycles',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_sim_number_of_threads',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_sim_number_of_threads',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_frame_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_vbox_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Box'
          },
          {
            kind => 'variable',
            name => '_frame_info_sim',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_grid_info_sim',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_info_cycle_counter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_cycle_counter_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_frame_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_frame_rate_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_time_start',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_time_start_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_time_stop',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_time_stop_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_duration',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_duration_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_frame_info_pop_stat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_grid_info_pop_stat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_info_pop_stat_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_pop_stat_preds',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_total',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preys_total_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preds_total_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_frame_info_dead_stat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_grid_info_dead_stat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_info_dead_stat_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_dead_stat_preds',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_aged',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preys_aged_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preds_aged_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_eaten',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preys_eaten_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preds_eaten_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_starved',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preys_starved_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preds_starved_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_underfed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preys_underfed_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_info_preds_underfed_display',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => 'hbox',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => 'notebook_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Notebook'
          },
          {
            kind => 'variable',
            name => '_vbox_world_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Box'
          },
          {
            kind => 'variable',
            name => '_grid_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_entry_world_size_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_entry_world_size_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_world_size_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_world_size_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_button_world_size_change',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Button'
          },
          {
            kind => 'variable',
            name => '_entry_world_prey_init_number',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_world_prey_init_number',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_world_pred_init_number',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_world_pred_init_number',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_grid_plant_param',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_plant_max_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_plant_max_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_plant_growth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_plant_growth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_frame_prey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_grid_prey_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_entry_prey_birth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_prey_birth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_prey_energy_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_prey_energy_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_prey_satiation_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_prey_satiation_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_prey_max_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_prey_max_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_prey_max_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_prey_max_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_prey_max_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_prey_max_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_prey_push_n_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_button_prey_push_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Button'
          },
          {
            kind => 'variable',
            name => '_entry_prey_push_n_preys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_frame_pred',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Frame'
          },
          {
            kind => 'variable',
            name => '_grid_pred_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_entry_pred_birth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_pred_birth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_pred_energy_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_pred_energy_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_pred_satiation_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_pred_satiation_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_pred_max_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_pred_max_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_pred_max_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_pred_max_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_pred_max_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_label_pred_max_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_label_pred_push_n_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_button_pred_push_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Button'
          },
          {
            kind => 'variable',
            name => '_entry_pred_push_n_predators',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_vbox_world_vis_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Box'
          },
          {
            kind => 'variable',
            name => '_sw_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::ScrolledWindow'
          },
          {
            kind => 'variable',
            name => '_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< VisualWorld >'
          },
          {
            kind => 'variable',
            name => '_grid_world_vis_settings',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_world_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_world_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_adj_world_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::Adjustment >'
          },
          {
            kind => 'variable',
            name => '_scale_world_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Scale'
          },
          {
            kind => 'variable',
            name => '_sw_statistics',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::ScrolledWindow'
          },
          {
            kind => 'variable',
            name => '_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Graph >'
          },
          {
            kind => 'variable',
            name => '_grid_graph_vis',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Grid'
          },
          {
            kind => 'variable',
            name => '_label_graph_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_graph_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_adj_graph_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::Adjustment >'
          },
          {
            kind => 'variable',
            name => '_scale_graph_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Scale'
          },
          {
            kind => 'variable',
            name => '_check_button_graph_vis_zoom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::CheckButton'
          },
          {
            kind => 'variable',
            name => '_label_graph_vis_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Label'
          },
          {
            kind => 'variable',
            name => '_entry_graph_vis_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => '_adj_graph_vis_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::RefPtr< Gtk::Adjustment >'
          },
          {
            kind => 'variable',
            name => '_scale_graph_vis_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Scale'
          },
          {
            kind => 'variable',
            name => '_check_button_graph_vis_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::CheckButton'
          },
          {
            kind => 'variable',
            name => '_button_graph_vis_clear',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Button'
          },
          {
            kind => 'variable',
            name => '__pad1__',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PRIVATE'
          },
          {
            kind => 'variable',
            name => '_frame_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'float'
          },
          {
            kind => 'variable',
            name => '_start_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'timespec'
          },
          {
            kind => 'variable',
            name => '_stop_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'timespec'
          },
          {
            kind => 'variable',
            name => '_dispatcher_visualize_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_visualize_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_deactivate_control',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_activate_control',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_set_start_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_set_stop_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_stop',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_update_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_dispatcher_frame_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Dispatcher'
          },
          {
            kind => 'variable',
            name => '_thread',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Glib::Thread *'
          },
          {
            kind => 'variable',
            name => '_ini_parser',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'IniParser'
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'entry_to_value',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Converts string from an entry number. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is an Gtkmm entry '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'min'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is a number / lower bound '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'max'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is a number / upper bound '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'number between min and max'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'It also checks if a number is the interval [min, max]. If not, the number is set to nearest value and updates the entry. '
                }
              ]
            },
            type => 'static T',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'entry',
                type => 'Gtk::Entry &'
              },
              {
                declaration_name => 'min',
                type => 'const T'
              },
              {
                declaration_name => 'max',
                type => 'const T'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Main Window. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'MainWindowUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'MainWindowUnitTest.h'
      },
      all_members => [
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'entry',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'MainWindowUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'precision',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'test_entry_to_d',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'test_entry_to_l',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => 'test_entry_to_ui',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        },
        {
          name => '~MainWindowUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'MainWindowUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'MainWindowUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~MainWindowUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'MainWindowUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_entry_to_ui'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_entry_to_l'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_entry_to_d'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_entry_to_ui',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_entry_to_l',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_entry_to_d',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'entry',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Gtk::Entry'
          },
          {
            kind => 'variable',
            name => 'precision',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Organism',
      base => [
        {
          name => 'ppsim::OrganismConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ppsim::Creature',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Plant',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Organism.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Abstract definition of behaviour of organisms. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::OrganismConfig',
      derived => [
        {
          name => 'ppsim::CreatureConfig',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Organism',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::PlantConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'OrganismConfig.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'OrganismConfig',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'randomize_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Randomizes organism configuration object. '
                }
              ]
            },
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'scale_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Scale energy. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'max_energy'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the new upper bound '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_raw_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual TBoundedUI',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_max_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const unsigned int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_energy_ratio',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual const double',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'energy',
                type => 'const TBoundedUI'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_max_energy',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => '_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TBoundedUI'
          },
          {
            kind => 'variable',
            name => '_energy_consumption',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'classppsim_1_1_organism',
            content => 'Organism'
          },
          {
            type => 'text',
            content => ' configuration. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'OrganismConfigUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'OrganismConfigUnitTest.h'
      },
      all_members => [
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'OrganismConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'OrganismConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'OrganismConfigUnitTest'
        },
        {
          name => 'OrganismConfigUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'OrganismConfigUnitTest'
        },
        {
          name => 'test_set_get',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'OrganismConfigUnitTest'
        },
        {
          name => '~OrganismConfigUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'OrganismConfigUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'OrganismConfigUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_get'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'OrganismConfigUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~OrganismConfigUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_get',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Plant',
      base => [
        {
          name => 'ppsim::PlantConfig',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Organism',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Plant.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'grow',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Plant'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'PlantConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'grow',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Let plant grow. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'The energy of a plant grows constantly in each simulation cycle. The formula is: '
                },
                {
                  type => 'formula',
                  id => '',
                  content => '$ energy_{n+1} = energy_{n} + max\\_energy \\cdot growth\\_rate $'
                },
                {
                  type => 'text',
                  content => ' '
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Behaviour of plants. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::PlantConfig',
      base => [
        {
          name => 'ppsim::OrganismConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ppsim::Plant',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'PlantConfig.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_growth_rate',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'PlantConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::PlantConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'PlantConfig',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_growth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const double',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_growth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'growth_rate',
                type => 'const double'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_growth_rate',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'url',
            link => 'classppsim_1_1_plant',
            content => 'Plant'
          },
          {
            type => 'text',
            content => ' configuration. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'PlantConfigUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'PlantConfigUnitTest.h'
      },
      all_members => [
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'plant_config',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'PlantConfigUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'test_init',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'test_limits_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'test_scale_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'test_set_get_growth_rate',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => 'test_set_value_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        },
        {
          name => '~PlantConfigUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'PlantConfigUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'PlantConfigUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_init'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_value_energy'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_limits_energy'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_scale_energy'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_get_growth_rate'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'PlantConfigUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~PlantConfigUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_init',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_value_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test set energy value. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_limits_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Test limits of energy. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_scale_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test scalability of energy. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_get_growth_rate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'plant_config',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::PlantConfig *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::Predator',
      base => [
        {
          name => 'ppsim::PredatorConfig',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Creature',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Countable< Predator >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Predator.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'aged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => 'Countable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => 'Creature',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::Creature'
        },
        {
          name => 'CreatureConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'eat',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'eaten',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => 'get_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_living_state',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_next_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_offsprings',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Predator'
        },
        {
          name => 'get_raw_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'is_hungry',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'kill',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'next_vital_state',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_next_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'starved',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => 'total',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => 'underfed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => 'value_type',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => '~Countable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Predator >'
        },
        {
          name => '~Creature',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'get_offsprings',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create an offspring (realistic mode). '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to an offspring or nullptr, if no offspring was created'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'To create offsprings some conditions need to be fulfilled.'
                },
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'Offspring can only be created, if parent is not underfed. Energy level must be over half of energy maximum.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'An offspring are created with some probability (birth rate). '
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'virtual SPPredator',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'classppsim_1_1_predator',
            content => 'Predator'
          },
          {
            type => 'text',
            content => ' behaviour. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::PredatorConfig',
      base => [
        {
          name => 'ppsim::CreatureConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ppsim::Predator',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'PredatorConfig.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'CreatureConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        }
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'classppsim_1_1_predator',
            content => 'Predator'
          },
          {
            type => 'text',
            content => ' configuration. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::Prey',
      base => [
        {
          name => 'ppsim::PreyConfig',
          virtualness => 'virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Creature',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ppsim::Countable< Prey >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'Prey.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => '_energy_consumption',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'aged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => 'Countable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => 'Creature',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ppsim::Creature'
        },
        {
          name => 'CreatureConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'eat',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Prey'
        },
        {
          name => 'eaten',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => 'get_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_living_state',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_next_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'get_offsprings',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Prey'
        },
        {
          name => 'get_raw_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'is_hungry',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'kill',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'next_vital_state',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_next_field',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'starved',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => 'total',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => 'underfed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => 'value_type',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => '~Countable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Countable< Prey >'
        },
        {
          name => '~Creature',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::Creature'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'eat',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Eat plant. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'org'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is an organism configuration object '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'org',
                type => 'Organism *'
              }
            ],
            reimplements => {
              name => 'eat'
            }
          },
          {
            kind => 'function',
            name => 'get_offsprings',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create an offspring (realistic mode). '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to an offspring or nullptr, if no offspring was created'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'To create offsprings some conditions need to be fullfield.'
                },
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'Offspring can only be created, if parent is not underfed. Energy level must be over half of maximum energy.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'An offspring are created with some probability (birth rate). '
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'virtual SPPrey',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Behaviour of preys. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::PreyConfig',
      base => [
        {
          name => 'ppsim::CreatureConfig',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ppsim::Prey',
          virtualness => 'virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'PreyConfig.h'
      },
      all_members => [
        {
          name => '_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'CreatureConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_energy_ratio',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_raw_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'get_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'OrganismConfig',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'randomize_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'randomize_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'scale_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'scale_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_birth_rate',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_energy_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_age',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_max_energy',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::OrganismConfig'
        },
        {
          name => 'set_max_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        },
        {
          name => 'set_satiation_consumption',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::CreatureConfig'
        }
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'url',
            link => 'classppsim_1_1_prey',
            content => 'Prey'
          },
          {
            type => 'text',
            content => ' configuration. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'PreyConfigUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'PreyConfigUnitTest.h'
      },
      all_members => [
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'prey_config',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'PreyConfigUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_init',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_limits_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_limits_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_limits_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_randomize',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_scale_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_scale_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_scale_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_set_value_age',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_set_value_energy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => 'test_set_value_satiation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        },
        {
          name => '~PreyConfigUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'PreyConfigUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'PreyConfigUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_init'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_value_age'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_limits_age'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_scale_age'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_value_energy'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_limits_energy'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_scale_energy'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_value_satiation'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_limits_satiation'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_scale_satiation'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_randomize'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'PreyConfigUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~PreyConfigUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_init',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_value_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test set age value. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_limits_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Test limits of age. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_scale_age',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Test scalability of age. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_value_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test set energy value. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_limits_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test limits of energy. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_scale_energy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test scalability of energy. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_value_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test set satiation value. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_limits_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test limits of satiation. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_scale_satiation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test scalability of satiation. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test randomization. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => 'prey_config',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::PreyConfig *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'PreyUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'PreyUnitTest.h'
      },
      all_members => [
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'PreyUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_eat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_is_death_aged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_is_death_hunger',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_is_death_killed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_is_death_underfed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_is_hungry',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_randomize',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_scale_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => 'test_set_config',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        },
        {
          name => '~PreyUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'PreyUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'PreyUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_is_death_aged'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_is_death_underfed'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_is_death_hunger'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_is_death_killed'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_eat'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_is_hungry'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_randomize'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_scale_config'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_set_config'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'PreyUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~PreyUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_is_death_aged',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_is_death_underfed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test death if energy is lost. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_is_death_hunger',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test death caused by hunger. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_is_death_killed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Test death if energy is lost. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_eat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_is_hungry',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_scale_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::ReadLockGuard',
      includes => {
        local => 'no',
        name => 'Field.h'
      },
      all_members => [
        {
          name => '_lck',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::ReadLockGuard'
        },
        {
          name => 'ReadLockGuard',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::ReadLockGuard'
        },
        {
          name => '~ReadLockGuard',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::ReadLockGuard'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'ReadLockGuard',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'lck',
                type => 'pthread_rwlock_t &'
              }
            ]
          },
          {
            kind => 'function',
            name => '~ReadLockGuard',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_lck',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'pthread_rwlock_t *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'RuntimeError',
      includes => {
        local => 'no',
        name => 'RuntimeError.h'
      },
      all_members => [
        {
          name => 'm_msg',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RuntimeError'
        },
        {
          name => 'print',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RuntimeError'
        },
        {
          name => 'RuntimeError',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RuntimeError'
        },
        {
          name => '~RuntimeError',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RuntimeError'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'RuntimeError',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'err_msg',
                type => 'const std::string'
              }
            ]
          },
          {
            kind => 'function',
            name => '~RuntimeError',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'print',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'm_msg',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::string'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::SInterval',
      includes => {
        local => 'no',
        name => 'AbstractWorld.h'
      },
      all_members => [
        {
          name => 'a',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SInterval'
        },
        {
          name => 'b',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SInterval'
        },
        {
          name => 'SInterval',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SInterval'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'SInterval',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'a',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'b',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Interval. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'ppsim::SPointRect',
      includes => {
        local => 'no',
        name => 'C2DVector.h'
      },
      all_members => [
        {
          name => 'a',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SPointRect'
        },
        {
          name => 'b',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SPointRect'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'a',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TPoint'
          },
          {
            kind => 'variable',
            name => 'b',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TPoint'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::SPosRect',
      includes => {
        local => 'no',
        name => 'C2DVector.h'
      },
      all_members => [
        {
          name => 'a',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SPosRect'
        },
        {
          name => 'b',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::SPosRect'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'a',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TPosition'
          },
          {
            kind => 'variable',
            name => 'b',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TPosition'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'CppUnit::TestFixture',
      derived => [
        {
          name => 'AWorldUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'BoundedUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'CellUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'FieldUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'MainWindowUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'OrganismConfigUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'PlantConfigUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'PreyConfigUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'PreyUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'VWorldUnitTest',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::VisualWorld',
      base => [
        {
          name => 'DrawingArea',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'VisualWorld.h'
      },
      all_members => [
        {
          name => '__pad0__',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '__pad1__',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '_abstract_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '_cell_inner_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '_cell_outer_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '_visible_area',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'b',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'cairo_context',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'compute_visual_area',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'create_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'delete_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'disable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'enable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'force_redraw',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_abstract_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_cell_inner_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_cell_outer_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_height',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_max_size',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'get_width',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'is_enabled',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'on_draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'point_to_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'pointrect_to_posrect',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'recreate_visual_world',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'register_graph',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'run',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'set_cell_outer_radius',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'VisualWorld',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => 'VisualWorld',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        },
        {
          name => '~VisualWorld',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'ppsim::VisualWorld'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'VisualWorld',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'VisualWorld',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Constructor. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size_x',
                type => 'TIndex'
              },
              {
                declaration_name => 'size_y',
                type => 'TIndex'
              },
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig'
              },
              {
                declaration_name => 'prey_config',
                type => 'PreyConfig'
              },
              {
                declaration_name => 'predator_config',
                type => 'PredatorConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => '~VisualWorld',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_abstract_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< AbstractWorld >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Graph >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'recreate_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete and create worlds (visual and abstract) '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size_x',
                type => 'TIndex'
              },
              {
                declaration_name => 'size_y',
                type => 'TIndex'
              },
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig'
              },
              {
                declaration_name => 'prey_config',
                type => 'PreyConfig'
              },
              {
                declaration_name => 'predator_config',
                type => 'PredatorConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => 'run',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Run simulation. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cycles'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the number of simulation cycles. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cycles',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'force_redraw',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Redraw invalidated rectangle. '
                }
              ]
            },
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'on_draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Draw the visible hex fields on the drawing area. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cr'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the cairo context, where hex grid shall be drawn. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cr',
                type => 'const Cairo::RefPtr< Cairo::Context > &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'register_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Connect a graph to visual world. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'graph'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Pointer to a graph object. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'graph',
                type => 'std::shared_ptr< Graph >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_height',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get height of visual world in dots. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Height in dots. '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_width',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get width of visiual world in dots. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Width in dots. '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_max_size',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Hardware limits of the world. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Maxium allowed height / width of the visual world. '
                    }
                  ]
                }
              ]
            },
            type => 'size_t',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'set_cell_outer_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Setter. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'cell_outer_radius'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the radius of the hex cell. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cell_outer_radius',
                type => 'TSize'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_cell_outer_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TSize',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_cell_inner_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TSize',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'compute_visual_area',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Computes the area on the hex grid, that will be visible on the screen. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'visible_x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'is the width of the drawing area. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'visible_y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the height of the drawing area. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'scale_value_x'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the current position of the x-scale. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'scale_value_y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the current position of thy y-scale. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'scale_upper_x'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the maximum range of the x-scale. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'scale-upper_y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is the maximum range of the y-scale. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'visible_x',
                type => 'int'
              },
              {
                declaration_name => 'visible_y',
                type => 'int'
              },
              {
                declaration_name => 'scale_value_x',
                type => 'double'
              },
              {
                declaration_name => 'scale_value_y',
                type => 'double'
              },
              {
                declaration_name => 'scale_upper_x',
                type => 'double'
              },
              {
                declaration_name => 'scale_upper_y',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'disable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'enable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'is_enabled',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'point_to_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Convert a point from drawing area to position in hex grid. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'Point'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'in the visual world. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Position in hex grid. '
                    }
                  ]
                }
              ]
            },
            type => 'TPosition',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'point',
                type => 'TPoint'
              }
            ]
          },
          {
            kind => 'function',
            name => 'pointrect_to_posrect',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Convert area from drawing area to area on the hex grid. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'point_area'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Rectangle on the drawing area. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Rectangle on hexgrid. '
                    }
                  ]
                }
              ]
            },
            type => 'SPosRect',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'point_area',
                type => 'SPointRect &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Create visual world. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'size_x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'number of fields on x-axis. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'size_y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'number of fields on y-axis. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'plant_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is a plant config. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'prey_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is a prey config. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'predator_config'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'is a predator config. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size_x',
                type => 'TIndex'
              },
              {
                declaration_name => '_size_y',
                definition_name => 'size_y',
                type => 'TIndex'
              },
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig'
              },
              {
                declaration_name => 'prey_config',
                type => 'PreyConfig'
              },
              {
                declaration_name => 'predator_config',
                type => 'PredatorConfig'
              }
            ]
          },
          {
            kind => 'function',
            name => 'delete_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => '__pad0__',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PROTECTED'
          },
          {
            kind => 'variable',
            name => 'b',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PROTECTED const TPoint &'
          },
          {
            kind => 'variable',
            name => '__pad1__',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'PRIVATE'
          },
          {
            kind => 'variable',
            name => '_cell_outer_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TSize'
          },
          {
            kind => 'variable',
            name => '_cell_inner_radius',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TSize'
          },
          {
            kind => 'variable',
            name => '_visual_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< std::vector< Cell > >'
          },
          {
            kind => 'variable',
            name => '_abstract_world',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< AbstractWorld >'
          },
          {
            kind => 'variable',
            name => '_graph',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Graph >'
          },
          {
            kind => 'variable',
            name => '_visible_area',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'SPosRect'
          },
          {
            kind => 'variable',
            name => 'cairo_context',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Cairo::RefPtr< Cairo::Context >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the abstract world. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'VWorldUnitTest',
      base => [
        {
          name => 'TestFixture',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'VWorldUnitTest.h'
      },
      all_members => [
        {
          name => '_visual_world',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'CPPUNIT_TEST_SUITE_END',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'setUp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'tearDown',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'test_compute_visual_area',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'test_distance',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'test_point_to_pos',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => 'VWorldUnitTest',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        },
        {
          name => '~VWorldUnitTest',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'VWorldUnitTest'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'VWorldUnitTest',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~VWorldUnitTest',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'VWorldUnitTest'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_distance'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'test_point_to_pos'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_END',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'setUp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'tearDown',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_distance',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_point_to_pos',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'test_compute_visual_area',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_visual_world',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ppsim::VisualWorld *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Gtk::Window',
      derived => [
        {
          name => 'ppsim::MainWindow',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim::WriteLockGuard',
      includes => {
        local => 'no',
        name => 'Field.h'
      },
      all_members => [
        {
          name => '_lck',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ppsim::WriteLockGuard'
        },
        {
          name => 'WriteLockGuard',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::WriteLockGuard'
        },
        {
          name => '~WriteLockGuard',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ppsim::WriteLockGuard'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'WriteLockGuard',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'lck',
                type => 'pthread_rwlock_t &'
              }
            ]
          },
          {
            kind => 'function',
            name => '~WriteLockGuard',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_lck',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'pthread_rwlock_t *'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  namespaces => [
    {
      name => 'AutoVersion',
      classes => [
      ],
      namespaces => [
      ],
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'DATE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "03"'
          },
          {
            kind => 'variable',
            name => 'MONTH',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "11"'
          },
          {
            kind => 'variable',
            name => 'YEAR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "2013"'
          },
          {
            kind => 'variable',
            name => 'UBUNTU_VERSION_STYLE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "13.11"'
          },
          {
            kind => 'variable',
            name => 'STATUS',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "Release"'
          },
          {
            kind => 'variable',
            name => 'STATUS_SHORT',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "r"'
          },
          {
            kind => 'variable',
            name => 'MAJOR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 1'
          },
          {
            kind => 'variable',
            name => 'MINOR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'BUILD',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 6'
          },
          {
            kind => 'variable',
            name => 'REVISION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 27'
          },
          {
            kind => 'variable',
            name => 'BUILDS_COUNT',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 877'
          },
          {
            kind => 'variable',
            name => 'FULLVERSION_STRING',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "1.0.6.27"'
          },
          {
            kind => 'variable',
            name => 'BUILD_HISTORY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 6'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim',
      classes => [
        {
          name => 'ppsim::AboutWindow'
        },
        {
          name => 'ppsim::AbstractWorld'
        },
        {
          name => 'ppsim::Barrier'
        },
        {
          name => 'ppsim::BarrierCPP'
        },
        {
          name => 'ppsim::C2DVector'
        },
        {
          name => 'ppsim::Cell'
        },
        {
          name => 'ppsim::Countable'
        },
        {
          name => 'ppsim::Counter'
        },
        {
          name => 'ppsim::Creature'
        },
        {
          name => 'ppsim::CreatureConfig'
        },
        {
          name => 'ppsim::Field'
        },
        {
          name => 'ppsim::Graph'
        },
        {
          name => 'ppsim::Helpers'
        },
        {
          name => 'ppsim::IniParser'
        },
        {
          name => 'ppsim::LivingState'
        },
        {
          name => 'ppsim::Lock'
        },
        {
          name => 'ppsim::LockBase'
        },
        {
          name => 'ppsim::MainWindow'
        },
        {
          name => 'ppsim::Organism'
        },
        {
          name => 'ppsim::OrganismConfig'
        },
        {
          name => 'ppsim::Plant'
        },
        {
          name => 'ppsim::PlantConfig'
        },
        {
          name => 'ppsim::Predator'
        },
        {
          name => 'ppsim::PredatorConfig'
        },
        {
          name => 'ppsim::Prey'
        },
        {
          name => 'ppsim::PreyConfig'
        },
        {
          name => 'ppsim::ReadLockGuard'
        },
        {
          name => 'ppsim::SInterval'
        },
        {
          name => 'ppsim::SPointRect'
        },
        {
          name => 'ppsim::SPosRect'
        },
        {
          name => 'ppsim::VisualWorld'
        },
        {
          name => 'ppsim::WriteLockGuard'
        }
      ],
      namespaces => [
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'TSize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'typedef',
            name => 'TPoint',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< TSize >'
          },
          {
            kind => 'typedef',
            name => 'TIndex',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'typedef',
            name => 'TPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< TIndex >'
          },
          {
            kind => 'typedef',
            name => 'SPPrey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Prey >'
          },
          {
            kind => 'typedef',
            name => 'SPPredator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Predator >'
          },
          {
            kind => 'typedef',
            name => 'PredatorList',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< SPPredator >'
          },
          {
            kind => 'typedef',
            name => 'PreyList',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< SPPrey >'
          },
          {
            kind => 'typedef',
            name => 'TValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          },
          {
            kind => 'typedef',
            name => 'TValues',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< TValue >'
          },
          {
            kind => 'typedef',
            name => 'SPPlant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Plant >'
          }
        ]
      },
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'LIVING_STATE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Possible living states of creatures. '
                }
              ]
            },
            detailed => {},
            values => [
              {
                name => 'ALIVE',
                brief => {},
                detailed => {}
              },
              {
                name => 'AGED',
                brief => {},
                detailed => {}
              },
              {
                name => 'STARVED',
                brief => {},
                detailed => {}
              },
              {
                name => 'UNDERFED',
                brief => {},
                detailed => {}
              },
              {
                name => 'KILLED',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'EDirection',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Definition of directions. '
                }
              ]
            },
            detailed => {},
            values => [
              {
                name => 'RIGHT',
                initializer => '= 0',
                brief => {},
                detailed => {}
              },
              {
                name => 'ABOVE_RIGHT',
                initializer => '= 60',
                brief => {},
                detailed => {}
              },
              {
                name => 'ABOVE_LEFT',
                initializer => '= 120',
                brief => {},
                detailed => {}
              },
              {
                name => 'LEFT',
                initializer => '= 180',
                brief => {},
                detailed => {}
              },
              {
                name => 'BELOW_LEFT',
                initializer => '= 240',
                brief => {},
                detailed => {}
              },
              {
                name => 'BELOW_RIGHT',
                initializer => '= 300',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'EOrganism',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Statistics indices. '
                }
              ]
            },
            detailed => {},
            values => [
              {
                name => 'PREDATOR',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREY',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYAGED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYKILLED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYSTARVED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYUNDERFED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDAGED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDKILLED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDSTARVED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDUNDERFED',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'growth_rate',
                type => 'const double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'OrganismConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'OrganismConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'config',
                type => 'OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creature_config',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'energy_consumption',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'satiation',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_satiation',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'satiation_consumption',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_age',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'birth_rate',
                type => 'const double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'CreatureConfig',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creature_config',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'config',
                type => 'CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator<<',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::ostream &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'std::ostream &'
              },
              {
                declaration_name => 'ls',
                type => 'LivingState'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'std',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'AboutWindow.cpp',
      includes => [
        {
          name => 'AboutWindow.h',
          ref => '_about_window_8h'
        },
        {
          name => 'iostream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'AboutWindow.h',
      includes => [
        {
          name => 'gtkmm.h'
        }
      ],
      included_by => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'MainWindow.cpp',
          ref => '_main_window_8cpp'
        },
        {
          name => 'AboutWindow.cpp',
          ref => '_about_window_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'AbstractWorld.cpp',
      includes => [
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        },
        {
          name => 'unistd.h'
        },
        {
          name => 'cassert'
        },
        {
          name => 'vector'
        },
        {
          name => 'thread'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Abstract representation of the world. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'AbstractWorld.h',
      includes => [
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        },
        {
          name => 'C2DVector.h',
          ref => '_c2_d_vector_8h'
        },
        {
          name => 'Lock.h',
          ref => '_lock_8h'
        },
        {
          name => 'Barrier.h',
          ref => '_barrier_8h'
        },
        {
          name => 'BarrierCPP.h',
          ref => '_barrier_c_p_p_8h'
        },
        {
          name => 'mutex'
        },
        {
          name => 'atomic'
        }
      ],
      included_by => [
        {
          name => 'VisualWorld.h',
          ref => '_visual_world_8h'
        },
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'AWorldUnitTest.h',
          ref => '_a_world_unit_test_8h'
        },
        {
          name => 'AbstractWorld.cpp',
          ref => '_abstract_world_8cpp'
        },
        {
          name => 'VWorldUnitTest.cpp',
          ref => '_v_world_unit_test_8cpp'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Abstract representation of the world. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke The world consists of a number of fields, that are ordered in a coordinate system. A routine assigns the fields to different threads, that move the fields from current state to the next state. Moving a field from one state to another means increasing age of creatures, growing plants, move creatures from one field to another, ... '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'AWorldUnitTest.cpp',
      includes => [
        {
          name => 'AWorldUnitTest.h',
          ref => '_a_world_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'AWorldUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'AWorldUnitTest.h',
      includes => [
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'AWorldUnitTest.cpp',
          ref => '_a_world_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Barrier.cpp',
      includes => [
        {
          name => 'Barrier.h',
          ref => '_barrier_8h'
        },
        {
          name => 'assert.h'
        },
        {
          name => 'iostream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Barrier.h',
      includes => [
        {
          name => 'LockBase.h',
          ref => '_lock_base_8h'
        }
      ],
      included_by => [
        {
          name => 'Barrier.cpp',
          ref => '_barrier_8cpp'
        },
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'BarrierCPP.h',
      includes => [
        {
          name => 'condition_variable'
        },
        {
          name => 'mutex'
        },
        {
          name => 'atomic'
        }
      ],
      included_by => [
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Bounded.h',
      includes => [
        {
          name => 'iostream'
        },
        {
          name => 'cstdlib'
        },
        {
          name => 'assert.h'
        }
      ],
      included_by => [
        {
          name => 'OrganismConfig.h',
          ref => '_organism_config_8h'
        },
        {
          name => 'PlantConfig.cpp',
          ref => '_plant_config_8cpp'
        },
        {
          name => 'C2DVector.h',
          ref => '_c2_d_vector_8h'
        },
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'MainWindow.cpp',
          ref => '_main_window_8cpp'
        },
        {
          name => 'Graph.cpp',
          ref => '_graph_8cpp'
        },
        {
          name => 'BoundedUnitTest.h',
          ref => '_bounded_unit_test_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Template class that defines lower and upper bounds for a value. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'BoundedUnitTest.cpp',
      includes => [
        {
          name => 'BoundedUnitTest.h',
          ref => '_bounded_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'BoundedUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'BoundedUnitTest.h',
      includes => [
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'BoundedUnitTest.cpp',
          ref => '_bounded_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'C2DVector.h',
      includes => [
        {
          name => 'sstream'
        },
        {
          name => 'string'
        },
        {
          name => 'iostream'
        },
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        }
      ],
      included_by => [
        {
          name => 'Cell.h',
          ref => '_cell_8h'
        },
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'TSize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'typedef',
            name => 'TPoint',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< TSize >'
          },
          {
            kind => 'typedef',
            name => 'TIndex',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'typedef',
            name => 'TPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'C2DVector< TIndex >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Specialized vector. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Cell.cpp',
      includes => [
        {
          name => 'Cell.h',
          ref => '_cell_8h'
        },
        {
          name => 'Helpers.h',
          ref => '_helpers_8h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Definition of directions. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Cell.h',
      includes => [
        {
          name => 'C2DVector.h',
          ref => '_c2_d_vector_8h'
        },
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'Countable.h',
          ref => '_countable_8h'
        },
        {
          name => 'cmath'
        },
        {
          name => 'iostream'
        },
        {
          name => 'sstream'
        },
        {
          name => 'vector'
        },
        {
          name => 'gtkmm/drawingarea.h'
        }
      ],
      included_by => [
        {
          name => 'VisualWorld.h',
          ref => '_visual_world_8h'
        },
        {
          name => 'CellUnitTest.h',
          ref => '_cell_unit_test_8h'
        },
        {
          name => 'Cell.cpp',
          ref => '_cell_8cpp'
        }
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'EDirection',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Definition of directions. '
                }
              ]
            },
            detailed => {},
            values => [
              {
                name => 'RIGHT',
                initializer => '= 0',
                brief => {},
                detailed => {}
              },
              {
                name => 'ABOVE_RIGHT',
                initializer => '= 60',
                brief => {},
                detailed => {}
              },
              {
                name => 'ABOVE_LEFT',
                initializer => '= 120',
                brief => {},
                detailed => {}
              },
              {
                name => 'LEFT',
                initializer => '= 180',
                brief => {},
                detailed => {}
              },
              {
                name => 'BELOW_LEFT',
                initializer => '= 240',
                brief => {},
                detailed => {}
              },
              {
                name => 'BELOW_RIGHT',
                initializer => '= 300',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Definition of directions. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'CellUnitTest.cpp',
      includes => [
        {
          name => 'CellUnitTest.h',
          ref => '_cell_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'CellUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'CellUnitTest.h',
      includes => [
        {
          name => 'Cell.h',
          ref => '_cell_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'CellUnitTest.cpp',
          ref => '_cell_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Countable.h',
      includes => [
        {
          name => 'Counter.h',
          ref => '_counter_8h'
        }
      ],
      included_by => [
        {
          name => 'Cell.h',
          ref => '_cell_8h'
        },
        {
          name => 'Predator.h',
          ref => '_predator_8h'
        },
        {
          name => 'Prey.h',
          ref => '_prey_8h'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Thread-safe counters. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Counter.h',
      includes => [
        {
          name => 'atomic'
        }
      ],
      included_by => [
        {
          name => 'Countable.h',
          ref => '_countable_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Thread-safe counter. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Creature.cpp',
      includes => [
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'Field.h',
          ref => '_field_8h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Behaviour of creatures. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Creature.h',
      includes => [
        {
          name => 'Organism.h',
          ref => '_organism_8h'
        },
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        },
        {
          name => 'CreatureConfig.h',
          ref => '_creature_config_8h'
        },
        {
          name => 'LivingState.h',
          ref => '_living_state_8h'
        },
        {
          name => 'stack'
        },
        {
          name => 'memory'
        }
      ],
      included_by => [
        {
          name => 'Creature.cpp',
          ref => '_creature_8cpp'
        },
        {
          name => 'Predator.h',
          ref => '_predator_8h'
        },
        {
          name => 'Prey.h',
          ref => '_prey_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Behaviour of creatures. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'CreatureConfig.cpp',
      includes => [
        {
          name => 'CreatureConfig.h',
          ref => '_creature_config_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creature_config',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'energy_consumption',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'satiation',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_satiation',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'satiation_consumption',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_age',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'birth_rate',
                type => 'const double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'CreatureConfig',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creature_config',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'config',
                type => 'CreatureConfig &'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Creature configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'CreatureConfig.h',
      includes => [
        {
          name => 'OrganismConfig.h',
          ref => '_organism_config_8h'
        }
      ],
      included_by => [
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'PreyConfig.h',
          ref => '_prey_config_8h'
        },
        {
          name => 'PredatorConfig.h',
          ref => '_predator_config_8h'
        },
        {
          name => 'CreatureConfig.cpp',
          ref => '_creature_config_8cpp'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creature_config',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'energy_consumption',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'satiation',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_satiation',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'satiation_consumption',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_age',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'birth_rate',
                type => 'const double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'CreatureConfig',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creature_config',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'CreatureConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const CreatureConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'config',
                type => 'CreatureConfig &'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Creature configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'dictionary.c',
      includes => [
        {
          name => 'dictionary.h',
          ref => 'dictionary_8h'
        },
        {
          name => 'stdio.h'
        },
        {
          name => 'stdlib.h'
        },
        {
          name => 'string.h'
        },
        {
          name => 'unistd.h'
        }
      ],
      included_by => [
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => 'MAXVALSZ',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Maximum value size for integers and doubles. '
                }
              ]
            },
            initializer => '1024'
          },
          {
            kind => 'define',
            name => 'DICTMINSZ',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Minimal allocated number of entries in a dictionary '
                }
              ]
            },
            initializer => '128'
          },
          {
            kind => 'define',
            name => 'DICT_INVALID_KEY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Invalid key token '
                }
              ]
            },
            initializer => '((char*)-1)'
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'mem_double',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static void *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ptr',
                type => 'void *'
              },
              {
                declaration_name => 'size',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'xstrdup',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Duplicate a string. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'String to duplicate '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Pointer to a newly allocated string, to be freed with free()'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This is a replacement for strdup(). This implementation is provided for systems that do not have it. '
                }
              ]
            },
            type => 'static char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_hash',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Compute the hash key for a string. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Character string to use for key. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '1 unsigned int on at least 32 bits.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This hash function has been taken from an Article in Dr Dobbs Journal. This is normally a collision-free function, distributing keys evenly. The key is stored anyway in the struct so that collision can be avoided by comparing the key itself in last resort. '
                }
              ]
            },
            type => 'unsigned',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_new',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create a new dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'size'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Optional initial size of the dictionary. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '1 newly allocated dictionary objet.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function allocates a new dictionary object of given size and returns it. If you do not know in advance (roughly) the number of entries in the dictionary, give size=0. '
                }
              ]
            },
            type => 'dictionary *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_del',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete a dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to deallocate. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Deallocate a dictionary object and all memory associated to it. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_get',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get a value from a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to search. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key to look for in the dictionary. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'def'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Default value to return if key not found. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '1 pointer to internally allocated character string.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function locates a key in a dictionary and returns a pointer to its value, or the passed \'def\' pointer if no such key can be found in dictionary. The returned character pointer points to data internal to the dictionary object, you should not try to free it or modify it. '
                }
              ]
            },
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'def',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_set',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Set a value in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key to modify or add. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'val'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to add. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int 0 if Ok, anything else otherwise'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'If the given key is found in the dictionary, the associated value is replaced by the provided one. If the key cannot be found in the dictionary, it is added to it.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'It is Ok to provide a NULL value for val, but NULL values for the dictionary or the key are considered as errors: the function will return immediately in such a case.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Notice that if you dictionary_set a variable to NULL, a call to dictionary_get will return a NULL value: the variable will be found, and its value (NULL) is returned. In other words, setting the variable content to NULL is equivalent to deleting the variable from the dictionary. It is not possible (in this implementation) to have a key in the dictionary without value.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns non-zero in case of failure. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'val',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_unset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete a key in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key to remove. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function deletes a key in a dictionary. Nothing is done if the key cannot be found. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_dump',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Dump a dictionary to an opened file pointer. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Dumps a dictionary onto an opened file pointer. Key pairs are printed out as '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => '[Key]=[Value], one per line. It is Ok to provide stdout or stderr as output file pointers. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'out',
                type => 'FILE *'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Implements a dictionary for string variables. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'N. Devillard This module implements a simple dictionary object, i.e. a list of string/string associations. This object is useful to store e.g. informations retrieved from a configuration file (ini files). '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'dictionary.h',
      includes => [
        {
          name => 'stdio.h'
        },
        {
          name => 'stdlib.h'
        },
        {
          name => 'string.h'
        },
        {
          name => 'unistd.h'
        }
      ],
      included_by => [
        {
          name => 'iniparser.h',
          ref => 'iniparser_8h'
        },
        {
          name => 'dictionary.c',
          ref => 'dictionary_8c'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'dictionary',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'This object contains a list of string/string associations. Each association is identified by a unique string key. Looking up values in the dictionary is speeded up by the use of a (hopefully collision-free) hash function. '
                }
              ]
            },
            type => 'struct _dictionary_'
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'dictionary_hash',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Compute the hash key for a string. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Character string to use for key. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '1 unsigned int on at least 32 bits.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This hash function has been taken from an Article in Dr Dobbs Journal. This is normally a collision-free function, distributing keys evenly. The key is stored anyway in the struct so that collision can be avoided by comparing the key itself in last resort. '
                }
              ]
            },
            type => 'unsigned',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_new',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Create a new dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'size'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Optional initial size of the dictionary. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '1 newly allocated dictionary objet.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function allocates a new dictionary object of given size and returns it. If you do not know in advance (roughly) the number of entries in the dictionary, give size=0. '
                }
              ]
            },
            type => 'dictionary *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'size',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_del',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete a dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to deallocate. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Deallocate a dictionary object and all memory associated to it. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'vd',
                definition_name => 'd',
                type => 'dictionary *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_get',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get a value from a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to search. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key to look for in the dictionary. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'def'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Default value to return if key not found. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => '1 pointer to internally allocated character string.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function locates a key in a dictionary and returns a pointer to its value, or the passed \'def\' pointer if no such key can be found in dictionary. The returned character pointer points to data internal to the dictionary object, you should not try to free it or modify it. '
                }
              ]
            },
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'def',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_set',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Set a value in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key to modify or add. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'val'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to add. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int 0 if Ok, anything else otherwise'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'If the given key is found in the dictionary, the associated value is replaced by the provided one. If the key cannot be found in the dictionary, it is added to it.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'It is Ok to provide a NULL value for val, but NULL values for the dictionary or the key are considered as errors: the function will return immediately in such a case.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Notice that if you dictionary_set a variable to NULL, a call to dictionary_get will return a NULL value: the variable will be found, and its value (NULL) is returned. In other words, setting the variable content to NULL is equivalent to deleting the variable from the dictionary. It is not possible (in this implementation) to have a key in the dictionary without value.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns non-zero in case of failure. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'vd',
                definition_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'val',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_unset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete a key in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'dictionary object to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key to remove. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function deletes a key in a dictionary. Nothing is done if the key cannot be found. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dictionary_dump',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Dump a dictionary to an opened file pointer. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Dumps a dictionary onto an opened file pointer. Key pairs are printed out as '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => '[Key]=[Value], one per line. It is Ok to provide stdout or stderr as output file pointers. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'out',
                type => 'FILE *'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Implements a dictionary for string variables. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'N. Devillard This module implements a simple dictionary object, i.e. a list of string/string associations. This object is useful to store e.g. informations retrieved from a configuration file (ini files). '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Field.cpp',
      includes => [
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'Helpers.h',
          ref => '_helpers_8h'
        },
        {
          name => 'cstdlib'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Definition of the field. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Field.h',
      includes => [
        {
          name => 'Predator.h',
          ref => '_predator_8h'
        },
        {
          name => 'Prey.h',
          ref => '_prey_8h'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        },
        {
          name => 'PredatorConfig.h',
          ref => '_predator_config_8h'
        },
        {
          name => 'PreyConfig.h',
          ref => '_prey_config_8h'
        },
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'cstdlib'
        },
        {
          name => 'vector'
        },
        {
          name => 'cmath'
        },
        {
          name => 'list'
        },
        {
          name => 'iostream'
        },
        {
          name => 'mutex'
        }
      ],
      included_by => [
        {
          name => 'Cell.h',
          ref => '_cell_8h'
        },
        {
          name => 'Creature.cpp',
          ref => '_creature_8cpp'
        },
        {
          name => 'FieldUnitTest.h',
          ref => '_field_unit_test_8h'
        },
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        },
        {
          name => 'Field.cpp',
          ref => '_field_8cpp'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'PredatorList',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< SPPredator >'
          },
          {
            kind => 'typedef',
            name => 'PreyList',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< SPPrey >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Definition of the field. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'FieldUnitTest.cpp',
      includes => [
        {
          name => 'FieldUnitTest.h',
          ref => '_field_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'FieldUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'FieldUnitTest.h',
      includes => [
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'FieldUnitTest.cpp',
          ref => '_field_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'FilePtr.cpp',
      includes => [
        {
          name => 'FilePtr.h',
          ref => '_file_ptr_8h'
        },
        {
          name => 'RuntimeError.h',
          ref => '_runtime_error_8h'
        },
        {
          name => 'cstdio'
        },
        {
          name => 'pwd.h'
        },
        {
          name => 'unistd.h'
        },
        {
          name => 'sys/stat.h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'FilePtr.h',
      includes => [
        {
          name => 'cstdio'
        },
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'FilePtr.cpp',
          ref => '_file_ptr_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Graph.cpp',
      includes => [
        {
          name => 'Graph.h',
          ref => '_graph_8h'
        },
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'fstream'
        },
        {
          name => 'cairomm/surface.h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the graph. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Graph.h',
      includes => [
        {
          name => 'gtkmm/drawingarea.h'
        },
        {
          name => 'vector'
        }
      ],
      included_by => [
        {
          name => 'VisualWorld.h',
          ref => '_visual_world_8h'
        },
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'Graph.cpp',
          ref => '_graph_8cpp'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'TValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          },
          {
            kind => 'typedef',
            name => 'TValues',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< TValue >'
          }
        ]
      },
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'EOrganism',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Statistics indices. '
                }
              ]
            },
            detailed => {},
            values => [
              {
                name => 'PREDATOR',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREY',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYAGED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYKILLED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYSTARVED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREYUNDERFED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDAGED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDKILLED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDSTARVED',
                brief => {},
                detailed => {}
              },
              {
                name => 'PREDUNDERFED',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the graph. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Helpers.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'sstream'
        }
      ],
      included_by => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'Field.cpp',
          ref => '_field_8cpp'
        },
        {
          name => 'Cell.cpp',
          ref => '_cell_8cpp'
        },
        {
          name => 'PreyUnitTest.cpp',
          ref => '_prey_unit_test_8cpp'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Helper functions. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'iniparser.c',
      includes => [
        {
          name => 'ctype.h'
        },
        {
          name => 'iniparser.h',
          ref => 'iniparser_8h'
        }
      ],
      included_by => [
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => 'ASCIILINESZ',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(1024)'
          },
          {
            kind => 'define',
            name => 'INI_INVALID_KEY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '((char*)-1)'
          }
        ]
      },
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'line_status',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'This enum stores the status for each parsed line (internal use only). '
                }
              ]
            },
            type => 'enum _line_status_'
          }
        ]
      },
      enums => {
        members => [
          {
            kind => 'enum',
            name => '_line_status_',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'This enum stores the status for each parsed line (internal use only). '
                }
              ]
            },
            values => [
              {
                name => 'LINE_UNPROCESSED',
                brief => {},
                detailed => {}
              },
              {
                name => 'LINE_ERROR',
                brief => {},
                detailed => {}
              },
              {
                name => 'LINE_EMPTY',
                brief => {},
                detailed => {}
              },
              {
                name => 'LINE_COMMENT',
                brief => {},
                detailed => {}
              },
              {
                name => 'LINE_SECTION',
                brief => {},
                detailed => {}
              },
              {
                name => 'LINE_VALUE',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'strlwc',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Convert a string to lowercase. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'String to convert. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'ptr to statically allocated string.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function returns a pointer to a statically allocated string containing a lowercased version of the input string. Do not free or modify the returned string! Since the returned string is statically allocated, it will be modified at each function call (not re-entrant). '
                }
              ]
            },
            type => 'static char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'strstrip',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Remove blanks at the beginning and the end of a string. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'String to parse. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'ptr to statically allocated string.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function returns a pointer to a statically allocated string, which is identical to the input string, except that all blank characters at the end and the beg. of the string have been removed. Do not free or modify the returned string! Since the returned string is statically allocated, it will be modified at each function call (not re-entrant). '
                }
              ]
            },
            type => 'static char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getnsec',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get number of sections in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Number of sections found in dictionary'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function returns the number of sections found in a dictionary. The test to recognize sections is done on the string stored in the dictionary: a section name is given as "section" whereas a key is stored as "section:key", thus the test looks for entries that do not contain a colon.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This clearly fails in the case a section name contains a colon, but this should simply be avoided.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns -1 in case of error. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getsecname',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get name for section n in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section number (from 0 to nsec-1). '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Pointer to char string'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function locates the n-th section in a dictionary and returns its name as a pointer to a string statically allocated inside the dictionary. Do not free or modify the returned string!'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns NULL in case of error. '
                }
              ]
            },
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'n',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_dump',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Dump a dictionary to an opened file pointer. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer to dump to. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function prints out the contents of a dictionary, one element by line, onto the provided file pointer. It is OK to specify '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stderr'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stdout'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as output files. This function is meant for debugging purposes mostly. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_dump_ini',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Save a dictionary to a loadable ini file. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer to dump to '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function dumps a given dictionary into a loadable ini file. It is Ok to specify '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stderr'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stdout'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as output files. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_dumpsection_ini',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Save a dictionary section to a loadable ini file. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section name of dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer to dump to '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function dumps a given section of a given dictionary into a loadable ini file. It is Ok to specify '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stderr'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stdout'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as output files. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 's',
                type => 'char *'
              },
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getsecnkeys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the number of keys in a section of a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section name of dictionary to examine '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Number of keys in section '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 's',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getseckeys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the number of keys in a section of a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section name of dictionary to examine '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to statically allocated character strings'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary and finds all keys in a given section. Each pointer in the returned char pointer-to-pointer is pointing to a string allocated in the dictionary; do not free or modify them.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns NULL in case of error. '
                }
              ]
            },
            type => 'char **',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 's',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getstring',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'def'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Default value to return if key not found. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to statically allocated character string'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the pointer passed as \'def\' is returned. The returned char pointer is pointing to a string allocated in the dictionary, do not free or modify it. '
                }
              ]
            },
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'def',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getint',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key, convert to an int. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Supported values for integers include the usual C notation so decimal, octal (starting with 0) and hexadecimal (starting with 0x) are supported. Examples:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"42" -> 42 "042" -> 34 (octal -> decimal) "0x42" -> 66 (hexa -> decimal)'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Warning: the conversion may overflow in various ways. Conversion is totally outsourced to strtol(), see the associated man page for overflow handling.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Credits: Thanks to A. Becker for suggesting strtol() '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'notfound',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getdouble',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key, convert to a double. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'double'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned. '
                }
              ]
            },
            type => 'double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'notfound',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getboolean',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key, convert to a boolean. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A true boolean is found if one of the following is matched:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'list',
                  style => 'itemized',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'y\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'Y\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'t\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'T\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'1\''
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A false boolean is found if one of the following is matched:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'list',
                  style => 'itemized',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'n\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'N\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'f\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'F\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'0\''
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The notfound value returned if no boolean is identified, does not necessarily have to be 0 or 1. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'notfound',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_find_entry',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Finds out if a given entry exists in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ini'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Name of the entry to look for '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer 1 if entry exists, 0 otherwise'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Finds out if a given entry exists in the dictionary. Since sections are stored as keys with NULL associated values, this is the only way of querying for the presence of sections in a dictionary. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ini',
                type => 'dictionary *'
              },
              {
                declaration_name => 'entry',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_set',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Set an entry in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ini'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Entry to modify (entry name) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'val'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'New value to associate to the entry. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int 0 if Ok, -1 otherwise.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'If the given entry can be found in the dictionary, it is modified to contain the provided value. If it cannot be found, -1 is returned. It is Ok to set val to NULL. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ini',
                type => 'dictionary *'
              },
              {
                declaration_name => 'entry',
                type => 'const char *'
              },
              {
                declaration_name => 'val',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_unset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete an entry in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ini'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to modify '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Entry to delete (entry name) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'If the given entry can be found, it is deleted from the dictionary. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ini',
                type => 'dictionary *'
              },
              {
                declaration_name => 'entry',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_line',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Load a single line from an INI file. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'input_line'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Input line, may be concatenated multi-line input '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'section'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Output space to store section '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Output space to store key '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Output space to store value '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'line_status value '
                    }
                  ]
                }
              ]
            },
            type => 'static line_status',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'input_line',
                type => 'const char *'
              },
              {
                declaration_name => 'section',
                type => 'char *'
              },
              {
                declaration_name => 'key',
                type => 'char *'
              },
              {
                declaration_name => 'value',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_load',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Parse an ini file and return an allocated dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ininame'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Name of the ini file to read. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Pointer to newly allocated dictionary'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This is the parser for ini files. This function is called, providing the name of the file to be read. It returns a dictionary object that should not be accessed directly, but through accessor functions instead.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The returned dictionary must be freed using '
                },
                {
                  type => 'url',
                  link => 'iniparser_8c_1a90549ee518523921886b74454ff872eb',
                  content => 'iniparser_freedict()'
                },
                {
                  type => 'text',
                  content => '. '
                }
              ]
            },
            type => 'dictionary *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ininame',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_freedict',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Free all memory associated to an ini dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to free '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Free all memory associated to an ini dictionary. It is mandatory to call this function before the dictionary object gets out of the current context. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Parser for ini files. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'N. Devillard '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'IniParser.cpp',
      includes => [
        {
          name => 'IniParser.h',
          ref => '_ini_parser_8h'
        },
        {
          name => 'RuntimeError.h',
          ref => '_runtime_error_8h'
        },
        {
          name => 'cstring'
        },
        {
          name => 'cerrno'
        },
        {
          name => 'iostream'
        },
        {
          name => 'unistd.h'
        },
        {
          name => 'sys/types.h'
        },
        {
          name => 'pwd.h'
        },
        {
          name => 'sys/stat.h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Wrapper to the iniparser. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'IniParser.h',
      includes => [
        {
          name => 'stdio.h'
        },
        {
          name => 'string'
        },
        {
          name => 'iniparser.h',
          ref => 'iniparser_8h'
        }
      ],
      included_by => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'IniParser.cpp',
          ref => '_ini_parser_8cpp'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Wrapper to the iniparser. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'iniparser.h',
      includes => [
        {
          name => 'stdio.h'
        },
        {
          name => 'stdlib.h'
        },
        {
          name => 'string.h'
        },
        {
          name => 'dictionary.h',
          ref => 'dictionary_8h'
        }
      ],
      included_by => [
        {
          name => 'IniParser.h',
          ref => '_ini_parser_8h'
        },
        {
          name => 'iniparser.c',
          ref => 'iniparser_8c'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'iniparser_getnsec',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get number of sections in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Number of sections found in dictionary'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function returns the number of sections found in a dictionary. The test to recognize sections is done on the string stored in the dictionary: a section name is given as "section" whereas a key is stored as "section:key", thus the test looks for entries that do not contain a colon.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This clearly fails in the case a section name contains a colon, but this should simply be avoided.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns -1 in case of error. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getsecname',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get name for section n in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'n'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section number (from 0 to nsec-1). '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Pointer to char string'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function locates the n-th section in a dictionary and returns its name as a pointer to a string statically allocated inside the dictionary. Do not free or modify the returned string!'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns NULL in case of error. '
                }
              ]
            },
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'n',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_dump_ini',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Save a dictionary to a loadable ini file. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer to dump to '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function dumps a given dictionary into a loadable ini file. It is Ok to specify '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stderr'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stdout'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as output files. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_dumpsection_ini',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Save a dictionary section to a loadable ini file. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section name of dictionary to dump '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer to dump to '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function dumps a given section of a given dictionary into a loadable ini file. It is Ok to specify '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stderr'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stdout'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as output files. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 's',
                type => 'char *'
              },
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_dump',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Dump a dictionary to an opened file pointer. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to dump. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'f'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Opened file pointer to dump to. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function prints out the contents of a dictionary, one element by line, onto the provided file pointer. It is OK to specify '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stderr'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'stdout'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as output files. This function is meant for debugging purposes mostly. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'f',
                type => 'FILE *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getsecnkeys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the number of keys in a section of a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section name of dictionary to examine '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Number of keys in section '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 's',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getseckeys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the number of keys in a section of a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to examine '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Section name of dictionary to examine '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to statically allocated character strings'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary and finds all keys in a given section. Each pointer in the returned char pointer-to-pointer is pointing to a string allocated in the dictionary; do not free or modify them.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function returns NULL in case of error. '
                }
              ]
            },
            type => 'char **',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 's',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getstring',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'def'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Default value to return if key not found. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'pointer to statically allocated character string'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the pointer passed as \'def\' is returned. The returned char pointer is pointing to a string allocated in the dictionary, do not free or modify it. '
                }
              ]
            },
            type => 'char *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'def',
                type => 'char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getint',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key, convert to an int. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Supported values for integers include the usual C notation so decimal, octal (starting with 0) and hexadecimal (starting with 0x) are supported. Examples:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'list',
                  style => 'itemized',
                  content => [
                    [
                      {
                        type => 'text',
                        content => '"42" -> 42'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => '"042" -> 34 (octal -> decimal)'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => '"0x42" -> 66 (hexa -> decimal)'
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Warning: the conversion may overflow in various ways. Conversion is totally outsourced to strtol(), see the associated man page for overflow handling.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Credits: Thanks to A. Becker for suggesting strtol()'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Supported values for integers include the usual C notation so decimal, octal (starting with 0) and hexadecimal (starting with 0x) are supported. Examples:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"42" -> 42 "042" -> 34 (octal -> decimal) "0x42" -> 66 (hexa -> decimal)'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Warning: the conversion may overflow in various ways. Conversion is totally outsourced to strtol(), see the associated man page for overflow handling.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Credits: Thanks to A. Becker for suggesting strtol() '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'notfound',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getdouble',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key, convert to a double. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'double'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned. '
                }
              ]
            },
            type => 'double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'notfound',
                type => 'double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_getboolean',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Get the string associated to a key, convert to a boolean. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Key string to look for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'notfound'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Value to return in case of error '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function queries a dictionary for a key. A key as read from an ini file is given as "section:key". If the key cannot be found, the notfound value is returned.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A true boolean is found if one of the following is matched:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'list',
                  style => 'itemized',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'y\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'Y\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'t\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'T\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'1\''
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A false boolean is found if one of the following is matched:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'list',
                  style => 'itemized',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'n\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'N\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'f\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'F\''
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'A string starting with \'0\''
                      }
                    ]
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The notfound value returned if no boolean is identified, does not necessarily have to be 0 or 1. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              },
              {
                declaration_name => 'key',
                type => 'const char *'
              },
              {
                declaration_name => 'notfound',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_set',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Set an entry in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ini'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Entry to modify (entry name) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'val'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'New value to associate to the entry. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int 0 if Ok, -1 otherwise.'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'If the given entry can be found in the dictionary, it is modified to contain the provided value. If it cannot be found, -1 is returned. It is Ok to set val to NULL. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ini',
                type => 'dictionary *'
              },
              {
                declaration_name => 'entry',
                type => 'const char *'
              },
              {
                declaration_name => 'val',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_unset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Delete an entry in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ini'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to modify '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Entry to delete (entry name) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'If the given entry can be found, it is deleted from the dictionary. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ini',
                type => 'dictionary *'
              },
              {
                declaration_name => 'entry',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_find_entry',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Finds out if a given entry exists in a dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ini'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to search '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'entry'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Name of the entry to look for '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'integer 1 if entry exists, 0 otherwise'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Finds out if a given entry exists in the dictionary. Since sections are stored as keys with NULL associated values, this is the only way of querying for the presence of sections in a dictionary. '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ini',
                type => 'dictionary *'
              },
              {
                declaration_name => 'entry',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_load',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Parse an ini file and return an allocated dictionary object. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ininame'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Name of the ini file to read. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Pointer to newly allocated dictionary'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This is the parser for ini files. This function is called, providing the name of the file to be read. It returns a dictionary object that should not be accessed directly, but through accessor functions instead.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The returned dictionary must be freed using '
                },
                {
                  type => 'url',
                  link => 'iniparser_8h_1a90549ee518523921886b74454ff872eb',
                  content => 'iniparser_freedict()'
                },
                {
                  type => 'text',
                  content => '. '
                }
              ]
            },
            type => 'dictionary *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ininame',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'iniparser_freedict',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Free all memory associated to an ini dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'd'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Dictionary to free '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Free all memory associated to an ini dictionary. It is mandatory to call this function before the dictionary object gets out of the current context. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'd',
                type => 'dictionary *'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Parser for ini files. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'N. Devillard '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'LivingState.cpp',
      includes => [
        {
          name => 'LivingState.h',
          ref => '_living_state_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'operator<<',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::ostream &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'std::ostream &'
              },
              {
                declaration_name => 'ls',
                type => 'LivingState'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'LivingState.h',
      includes => [
        {
          name => 'ostream'
        }
      ],
      included_by => [
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'LivingState.cpp',
          ref => '_living_state_8cpp'
        }
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'LIVING_STATE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Possible living states of creatures. '
                }
              ]
            },
            detailed => {},
            values => [
              {
                name => 'ALIVE',
                brief => {},
                detailed => {}
              },
              {
                name => 'AGED',
                brief => {},
                detailed => {}
              },
              {
                name => 'STARVED',
                brief => {},
                detailed => {}
              },
              {
                name => 'UNDERFED',
                brief => {},
                detailed => {}
              },
              {
                name => 'KILLED',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'operator<<',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::ostream &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'std::ostream &'
              },
              {
                declaration_name => 'ls',
                type => 'LivingState'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Lock.h',
      includes => [
        {
          name => 'LockBase.h',
          ref => '_lock_base_8h'
        }
      ],
      included_by => [
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'LockBase.h',
      includes => [
        {
          name => 'pthread.h'
        }
      ],
      included_by => [
        {
          name => 'Barrier.h',
          ref => '_barrier_8h'
        },
        {
          name => 'Lock.h',
          ref => '_lock_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MainWindow.cpp',
      includes => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        },
        {
          name => 'AboutWindow.h',
          ref => '_about_window_8h'
        },
        {
          name => 'RuntimeError.h',
          ref => '_runtime_error_8h'
        },
        {
          name => 'unistd.h'
        },
        {
          name => 'ctime'
        },
        {
          name => 'stdio.h'
        },
        {
          name => 'iostream'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Main Window. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'MainWindow.h',
      includes => [
        {
          name => 'memory'
        },
        {
          name => 'VisualWorld.h',
          ref => '_visual_world_8h'
        },
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        },
        {
          name => 'Graph.h',
          ref => '_graph_8h'
        },
        {
          name => 'Helpers.h',
          ref => '_helpers_8h'
        },
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'IniParser.h',
          ref => '_ini_parser_8h'
        },
        {
          name => 'AboutWindow.h',
          ref => '_about_window_8h'
        },
        {
          name => 'stdlib.h'
        },
        {
          name => 'gtkmm.h'
        },
        {
          name => 'glibmm/thread.h'
        },
        {
          name => 'glibmm/dispatcher.h'
        }
      ],
      included_by => [
        {
          name => 'MainWindow.cpp',
          ref => '_main_window_8cpp'
        },
        {
          name => 'MainWindowUnitTest.h',
          ref => '_main_window_unit_test_8h'
        },
        {
          name => 'ppsim.cpp',
          ref => 'ppsim_8cpp'
        }
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => 'PROTECTED',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'protected'
          },
          {
            kind => 'define',
            name => 'PRIVATE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'private'
          },
          {
            kind => 'define',
            name => 'MAXUI',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '10000000'
          },
          {
            kind => 'define',
            name => 'MAXUL',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '10000000'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Main Window. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'MainWindowUnitTest.cpp',
      includes => [
        {
          name => 'MainWindowUnitTest.h',
          ref => '_main_window_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'MainWindowUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'MainWindowUnitTest.h',
      includes => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'gtkmm/entry.h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'MainWindowUnitTest.cpp',
          ref => '_main_window_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Organism.cpp',
      includes => [
        {
          name => 'Organism.h',
          ref => '_organism_8h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Abstract definition of behaviour of organisms. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Organism.h',
      includes => [
        {
          name => 'OrganismConfig.h',
          ref => '_organism_config_8h'
        }
      ],
      included_by => [
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'Organism.cpp',
          ref => '_organism_8cpp'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Abstract definition of behaviour of organisms. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'OrganismConfig.cpp',
      includes => [
        {
          name => 'OrganismConfig.h',
          ref => '_organism_config_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'OrganismConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'OrganismConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'config',
                type => 'OrganismConfig &'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Organism configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'OrganismConfig.h',
      includes => [
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        }
      ],
      included_by => [
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'OrganismConfig.cpp',
          ref => '_organism_config_8cpp'
        },
        {
          name => 'Organism.h',
          ref => '_organism_8h'
        },
        {
          name => 'CreatureConfig.h',
          ref => '_creature_config_8h'
        },
        {
          name => 'OrganismConfigUnitTest.h',
          ref => '_organism_config_unit_test_8h'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'OrganismConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'OrganismConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const OrganismConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'config',
                type => 'OrganismConfig &'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Organism configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'OrganismConfigUnitTest.cpp',
      includes => [
        {
          name => 'OrganismConfigUnitTest.h',
          ref => '_organism_config_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'OrganismConfigUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'OrganismConfigUnitTest.h',
      includes => [
        {
          name => 'OrganismConfig.h',
          ref => '_organism_config_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'OrganismConfigUnitTest.cpp',
          ref => '_organism_config_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Plant.cpp',
      includes => [
        {
          name => 'cstdlib'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Behaviour of plants. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Plant.h',
      includes => [
        {
          name => 'Organism.h',
          ref => '_organism_8h'
        },
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'Countable.h',
          ref => '_countable_8h'
        },
        {
          name => 'memory'
        }
      ],
      included_by => [
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        },
        {
          name => 'Plant.cpp',
          ref => '_plant_8cpp'
        },
        {
          name => 'PreyUnitTest.h',
          ref => '_prey_unit_test_8h'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'SPPlant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Plant >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Behaviour of plants. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PlantConfig.cpp',
      includes => [
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'Bounded.h',
          ref => '_bounded_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'growth_rate',
                type => 'const double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig &'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Plant configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PlantConfig.h',
      includes => [
        {
          name => 'OrganismConfig.h',
          ref => '_organism_config_8h'
        }
      ],
      included_by => [
        {
          name => 'PlantConfig.cpp',
          ref => '_plant_config_8cpp'
        },
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'PlantConfigUnitTest.h',
          ref => '_plant_config_unit_test_8h'
        },
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        },
        {
          name => 'Prey.cpp',
          ref => '_prey_8cpp'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'max_energy',
                type => 'const unsigned int'
              },
              {
                declaration_name => 'growth_rate',
                type => 'const double'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_config',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'scale',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'target',
                type => 'PlantConfig &'
              },
              {
                declaration_name => 'source',
                type => 'const PlantConfig &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'randomize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'plant_config',
                type => 'PlantConfig &'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Plant configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PlantConfigUnitTest.cpp',
      includes => [
        {
          name => 'PlantConfigUnitTest.h',
          ref => '_plant_config_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'PlantConfigUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'PlantConfigUnitTest.h',
      includes => [
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'PlantConfigUnitTest.cpp',
          ref => '_plant_config_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ppsim.cpp',
      includes => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'gtkmm/application.h'
        },
        {
          name => 'cppunit/ui/text/TestRunner.h'
        },
        {
          name => 'cppunit/CompilerOutputter.h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        },
        {
          name => 'locale'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Main function (gtkmm3 < 3.4) '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Main function (gtkmm3 >= 3.4) '
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'argc',
                type => 'int'
              },
              {
                declaration_name => 'argv',
                type => 'char *',
                array => '[]'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Predator.cpp',
      includes => [
        {
          name => 'Predator.h',
          ref => '_predator_8h'
        },
        {
          name => 'cstdlib'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Predator behaviour. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Predator.h',
      includes => [
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'Countable.h',
          ref => '_countable_8h'
        },
        {
          name => 'PredatorConfig.h',
          ref => '_predator_config_8h'
        }
      ],
      included_by => [
        {
          name => 'Predator.cpp',
          ref => '_predator_8cpp'
        },
        {
          name => 'Field.h',
          ref => '_field_8h'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'SPPredator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Predator >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Predator behaviour. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PredatorConfig.cpp',
      includes => [
        {
          name => 'PredatorConfig.h',
          ref => '_predator_config_8h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Predator configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PredatorConfig.h',
      includes => [
        {
          name => 'CreatureConfig.h',
          ref => '_creature_config_8h'
        }
      ],
      included_by => [
        {
          name => 'PredatorConfig.cpp',
          ref => '_predator_config_8cpp'
        },
        {
          name => 'Predator.h',
          ref => '_predator_8h'
        },
        {
          name => 'Field.h',
          ref => '_field_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Predator configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Prey.cpp',
      includes => [
        {
          name => 'Prey.h',
          ref => '_prey_8h'
        },
        {
          name => 'PlantConfig.h',
          ref => '_plant_config_8h'
        },
        {
          name => 'cstdlib'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Behaviour of preys. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Prey.h',
      includes => [
        {
          name => 'Creature.h',
          ref => '_creature_8h'
        },
        {
          name => 'Countable.h',
          ref => '_countable_8h'
        },
        {
          name => 'PreyConfig.h',
          ref => '_prey_config_8h'
        }
      ],
      included_by => [
        {
          name => 'Field.h',
          ref => '_field_8h'
        },
        {
          name => 'PreyUnitTest.h',
          ref => '_prey_unit_test_8h'
        },
        {
          name => 'Prey.cpp',
          ref => '_prey_8cpp'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'SPPrey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< Prey >'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Behaviour of preys. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PreyConfig.cpp',
      includes => [
        {
          name => 'PreyConfig.h',
          ref => '_prey_config_8h'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Prey configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PreyConfig.h',
      includes => [
        {
          name => 'CreatureConfig.h',
          ref => '_creature_config_8h'
        }
      ],
      included_by => [
        {
          name => 'PreyConfigUnitTest.h',
          ref => '_prey_config_unit_test_8h'
        },
        {
          name => 'PreyConfig.cpp',
          ref => '_prey_config_8cpp'
        },
        {
          name => 'Prey.h',
          ref => '_prey_8h'
        },
        {
          name => 'Field.h',
          ref => '_field_8h'
        }
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Prey configuration. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'PreyConfigUnitTest.cpp',
      includes => [
        {
          name => 'PreyConfigUnitTest.h',
          ref => '_prey_config_unit_test_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'PreyConfigUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'PreyConfigUnitTest.h',
      includes => [
        {
          name => 'PreyConfig.h',
          ref => '_prey_config_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'PreyConfigUnitTest.cpp',
          ref => '_prey_config_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'PreyUnitTest.cpp',
      includes => [
        {
          name => 'PreyUnitTest.h',
          ref => '_prey_unit_test_8h'
        },
        {
          name => 'Helpers.h',
          ref => '_helpers_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'PreyUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'PreyUnitTest.h',
      includes => [
        {
          name => 'Prey.h',
          ref => '_prey_8h'
        },
        {
          name => 'Plant.h',
          ref => '_plant_8h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'PreyUnitTest.cpp',
          ref => '_prey_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RuntimeError.cpp',
      includes => [
        {
          name => 'RuntimeError.h',
          ref => '_runtime_error_8h'
        },
        {
          name => 'iostream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RuntimeError.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'MainWindow.cpp',
          ref => '_main_window_8cpp'
        },
        {
          name => 'RuntimeError.cpp',
          ref => '_runtime_error_8cpp'
        },
        {
          name => 'FilePtr.cpp',
          ref => '_file_ptr_8cpp'
        },
        {
          name => 'IniParser.cpp',
          ref => '_ini_parser_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'version.h',
      includes => [
      ],
      included_by => [
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => 'RC_FILEVERSION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1,0,6,27'
          },
          {
            kind => 'define',
            name => 'RC_FILEVERSION_STRING',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"1, 0, 6, 27\\0"'
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'DATE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "03"'
          },
          {
            kind => 'variable',
            name => 'MONTH',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "11"'
          },
          {
            kind => 'variable',
            name => 'YEAR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "2013"'
          },
          {
            kind => 'variable',
            name => 'UBUNTU_VERSION_STYLE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "13.11"'
          },
          {
            kind => 'variable',
            name => 'STATUS',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "Release"'
          },
          {
            kind => 'variable',
            name => 'STATUS_SHORT',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "r"'
          },
          {
            kind => 'variable',
            name => 'MAJOR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 1'
          },
          {
            kind => 'variable',
            name => 'MINOR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'BUILD',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 6'
          },
          {
            kind => 'variable',
            name => 'REVISION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 27'
          },
          {
            kind => 'variable',
            name => 'BUILDS_COUNT',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 877'
          },
          {
            kind => 'variable',
            name => 'FULLVERSION_STRING',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const char',
            arguments => '[]',
            initializer => '= "1.0.6.27"'
          },
          {
            kind => 'variable',
            name => 'BUILD_HISTORY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static const long',
            initializer => '= 6'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'VisualWorld.cpp',
      includes => [
        {
          name => 'VisualWorld.h',
          ref => '_visual_world_8h'
        },
        {
          name => 'unistd.h'
        },
        {
          name => 'ctime'
        },
        {
          name => 'cmath'
        },
        {
          name => 'memory'
        }
      ],
      included_by => [
      ],
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the abstract world. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'VisualWorld.h',
      includes => [
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        },
        {
          name => 'Graph.h',
          ref => '_graph_8h'
        },
        {
          name => 'Cell.h',
          ref => '_cell_8h'
        },
        {
          name => 'gtkmm/drawingarea.h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'memory'
        }
      ],
      included_by => [
        {
          name => 'MainWindow.h',
          ref => '_main_window_8h'
        },
        {
          name => 'VWorldUnitTest.h',
          ref => '_v_world_unit_test_8h'
        },
        {
          name => 'VisualWorld.cpp',
          ref => '_visual_world_8cpp'
        }
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => 'PROTECTED',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'protected'
          },
          {
            kind => 'define',
            name => 'PRIVATE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'private'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'text',
            content => 'Visualization of the abstract world. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            author => [
              {
                type => 'text',
                content => 'Eugen Betke '
              }
            ]
          }
        ]
      }
    },
    {
      name => 'VWorldUnitTest.cpp',
      includes => [
        {
          name => 'VWorldUnitTest.h',
          ref => '_v_world_unit_test_8h'
        },
        {
          name => 'AbstractWorld.h',
          ref => '_abstract_world_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'CPPUNIT_TEST_SUITE_REGISTRATION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'VWorldUnitTest'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'VWorldUnitTest.h',
      includes => [
        {
          name => 'VisualWorld.h',
          ref => '_visual_world_8h'
        },
        {
          name => 'gtkmm/window.h'
        },
        {
          name => 'cppunit/extensions/HelperMacros.h'
        }
      ],
      included_by => [
        {
          name => 'VWorldUnitTest.cpp',
          ref => '_v_world_unit_test_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
