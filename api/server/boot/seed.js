module.exports = function (server) {
  server.models.admin.findOrCreate({
    where: {
      phoneNumber: {
        eq: '+251941135730'
      }
    }
  }, {
    "phoneNumber": "+251941135730",
	"password":"123456",
	"privilegeType":"All Features"
  })
};