projects = Project.create(title: 'First project',
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  status: 'In progress')
# projects << Project.create({ title: 'Second project' },
#                   { description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
#                   { status: 'In progress' })
# projects << Project.create({ title: 'Third project' },
#                   { description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
#                   { status: 'In progress' })
# projects << Project.create({ title: 'Fourth project' },
#                   { description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
#                   { status: 'In progress' })
# projects << Project.create({ title: 'Fifth project' },
#                   { description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
#                   { status: 'In progress' })

Task.create(title:'First task',
            description:'Lorem ipsum dolor sit',
            status:'In process',
            date_assigned:DateTime.now,
            deadline: DateTime.now+10.days,
            project: projects)
# Task.create(title:'Second task',
#             description:'Lorem ipsum dolor sit',
#             status:'In process',
#             date_assigned:DateTime.today,
#             worker:'user',
#             deadline: DateTime.today+5.days,
#             project: projects.first)
# Task.create(title:'Third task',
#             description:'Lorem ipsum dolor sit',
#             status:'In process',
#             date_assigned:DateTime.today,
#             worker:'user',
#             deadline: DateTime.today+5.days,
#             project: projects.first)
