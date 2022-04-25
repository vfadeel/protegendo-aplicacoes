using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace UserSecrets.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserSecretController : ControllerBase
    {
        private readonly IConfiguration configuration;

        public UserSecretController(IConfiguration configuration)
        {
            this.configuration = configuration;
        }

        [HttpGet]
        public string ConsultarSegredos()
        {
            StringBuilder _builder = new StringBuilder();

            _builder.Append("Nome do Criador: ");
            _builder.Append(configuration["NomeDoCriador"]);
           
            _builder.AppendLine();
            
            _builder.Append("Connection String: ");
            _builder.Append(configuration["Config:DB:ConnectionString"]);
            
            return _builder.ToString();
        }

    }
}
