using Cyfron.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Cyfron.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClassController : ControllerBase
    {
        private readonly CyfronContext _context;

        public ClassController(CyfronContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Class>>> GetYourModels()
        {
            return Ok(await _context.Classes.ToListAsync());
        }
    }
}
