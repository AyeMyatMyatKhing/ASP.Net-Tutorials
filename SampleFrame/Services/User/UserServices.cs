using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.User;

namespace Services.User
{
    public class UserServices
    {
        UserDao user = new UserDao();
        public void FillDate()
        {
            user.SaveData();
        }
    }
}
