const {DataTypes}=require('sequelize')
module.exports = (sequelize, Sequelize) => {
    const Facleave = sequelize.define('Facleaves', {
      empid: {
      type: Sequelize.STRING
      
        },
        empname: {
            type: Sequelize.STRING
            },
                empdept: {
                  type: Sequelize.STRING
                  },
                  empdes: {
                    type: Sequelize.STRING
                    },
                    type:{
                        type: Sequelize.STRING
                    },
                  from:{
                type: Sequelize.STRING
            },
            to:{
                type: Sequelize.STRING
            },
            days:{
                type: DataTypes.DOUBLE
            },
           reason:{
            type: Sequelize.STRING
           }
    },{
      timestamps: false
    },
    {freezeTableName: true
});
    
    return Facleave;
  }