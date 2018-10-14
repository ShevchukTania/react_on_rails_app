Project.create(title: 'First project',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              )
Project.create(title: 'Second project',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              )
Project.create(title: 'Third project',
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              )
Project.create(title: 'Fourth project',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              )
Project.create(title: 'Fifth project',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              )
Project.create(title: 'Sixth project',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              )

Project.all.each do |project|
  Task.create(title:'First task',
              description:'Lorem ipsum dolor sit',
              deadline: DateTime.now+10.days,
              project: project)
  Task.create(title:'Second task',
              description:'Lorem ipsum dolor sit',
              deadline: DateTime.now+5.days,
              project: project)
  Task.create(title:'Third task',
              description:'Lorem ipsum dolor sit',
              deadline: DateTime.now+5.days,
              project: project)
end
