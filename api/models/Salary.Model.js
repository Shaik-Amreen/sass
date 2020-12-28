module.exports = (sequelize, Sequelize) => {
    const Salary = sequelize.define('ClgSalary', {
      empid: {
      type: Sequelize.STRING
      
        },
      empname: {
      type: Sequelize.STRING
      },
        empdept: {
          type: Sequelize.STRING
          },
          empaccno: {
            type: Sequelize.STRING
            },
            empbasic: {
              type: Sequelize.STRING
              },
              emphra: {
                type: Sequelize.STRING
                },
                empda: {
                    type: Sequelize.STRING
                    },
                    empsalary: {
                      type: Sequelize.STRING
                      },
                      empdate: {
                        type: Sequelize.STRING
                        },
    },{
      timestamps: false
    },
    {freezeTableName: true
});
    
    return Salary;
  }