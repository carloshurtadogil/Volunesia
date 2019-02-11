using Volunesia.Services;
using System.Threading.Tasks;
using System;

using Firebase.Auth;


namespace Volunesia.Droid.Service
{

    public class AndroidAuthenticationService
    {


        public Task<bool> RegisterVolunteerAsync()
        {

            //AppData_Droid.Auth.CreateUserWithEmailAndPassword("", "");
            //var newUser = Firebase.Auth.FirebaseAuth.GetInstance(MainActivity.app).CreateUserWithEmailAndPasswordAsync();
            throw new NotImplementedException();
        }

        public Task<bool> RegisterNonprofitAsync()
        {
            throw new NotImplementedException();
        }

        public Task<bool> LoginAsync()
        {
            throw new NotImplementedException();
        }

        public Task<bool> RegisterAsync()
        {
            throw new NotImplementedException();
        }

        public Task<bool> LogoutAsync()
        {
            //FirebaseAuth.GetInstance(MainActivity.app).SignOut();
            throw new NotImplementedException();
        }
    }
}