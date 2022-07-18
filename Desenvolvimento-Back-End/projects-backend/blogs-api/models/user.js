module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define(
    'User',
    {
      id: {
        type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true,
      },
      displayName: DataTypes.STRING,
      email: DataTypes.STRING,
      password: DataTypes.STRING,
      image: DataTypes.STRING,
    },
    { underscored: false, tableName: 'Users', timestamps: false },
  );
  
  User.associate = (models) => {
    User.hasMany(models.BlogPost, { foreignKey: 'id', as: 'blogposts' });
  };

  return User;
};