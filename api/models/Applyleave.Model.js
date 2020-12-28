
module.exports = (sequelize, Sequelize) => {
    const Applyleave = sequelize.define('Applyleave', {
     empid: {
      type: Sequelize.STRING
      },
      empname: {
        type: Sequelize.STRING
        },
        empdesn: {
            type: Sequelize.STRING
            },
        leavetype: {
            type: Sequelize.STRING
            },
            from: {
              type: Sequelize.STRING
              },
              to: {
                type: Sequelize.STRING
                },
                days: {
                  type: Sequelize.STRING
                  },
                  reason: {
                    type: Sequelize.STRING
                    },
                    applied:{
                      type:Sequelize.STRING
                    },
                    appliedon:{
                      type: Sequelize.STRING
                    },
                    done:{
                      type: Sequelize.STRING
                    }
    },{
      timestamps: false
    },
    
);
    
    return Applyleave;
  }