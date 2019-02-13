using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volunesia.Models;


namespace Volunesia.Services
{
    public interface IAuthenticationService
    {
        Task<bool> RegisterVolunteerAsync();
        Task<bool> RegisterNonprofitAsync();
        Task<bool> LoginAsync();
        Task<bool> RegisterAsync();
    }
}
