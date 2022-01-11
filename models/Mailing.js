module.exports = (sequelize, DataTypes) => {
    const Mailing = sequelize.define("mailingUsers", {
        user_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        
        mail: {
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
  return Mailing;
};