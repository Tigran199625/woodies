module.exports = (sequelize, DataTypes) => {
    const Text = sequelize.define("text", {
        partName: {
            type: DataTypes.STRING,
            primaryKey: true,
        },
        
        text: {
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
  return Text;
};