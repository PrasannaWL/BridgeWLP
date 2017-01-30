using SmartERP.Entity.Model.Configuration;

namespace SmartERP.Repository.Core
{
    public class studentRepository :GenericRepository<studentEntity>
    {
        public studentRepository(string table) : base(table)
        {
        }

        public studentRepository() : base()
        {
        }
    }
}
