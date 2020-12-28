
module.exports = (sequelize, Sequelize) => {
    const DaFaculty = sequelize.define('DaFaculty', {
      date: {
      type: Sequelize.STRING
      
        },
      da: {
        type: Sequelize.STRING
        }
    },{
      timestamps: false
    },
    
);
    
    return DaFaculty;
  }