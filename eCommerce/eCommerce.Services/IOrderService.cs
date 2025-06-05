using eCommerce.Model;
using eCommerce.Model.SearchObjects;
using eCommerce.Services.Database;

namespace eCommerce.Services
{
    public interface IOrderService : ICRUDService<Order, OrderSearchObject, Order, Order>
    {
    }
}
