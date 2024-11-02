const bcrypt = require('bcrypt');

/** @type {import('sequelize-cli').Migration} */
module.exports = {
	// eslint-disable-next-line no-unused-vars
	async up(queryInterface, Sequelize) {
		await queryInterface.bulkInsert(
			'Users',
			[
				{
					fullname: 'User Default',
					username: 'Default',
					email: 'default@gmail.com',
					password: bcrypt.hashSync('default123', 10),
					createdAt: new Date(),
					updatedAt: new Date(),
				},
			],
			{}
		);
	},

	// eslint-disable-next-line no-unused-vars
	async down(queryInterface, Sequelize) {
		await queryInterface.bulkDelete('Users', null, {});
	},
};
