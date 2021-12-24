module.exports = (sequelize, DataTypes) => {
    const imgURL = sequelize.define("imgUrl", {
        name: {
            type: DataTypes.STRING,
            primaryKey: true,
            autoincrement: true
        },
        
        url: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                notEmpty: true
            }
        },
    },
    {
      freezeTableName: true,
      timestamps: false,
    });
  return imgURL;
};