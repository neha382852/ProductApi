using DataAccessLibrary;
using ProductApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProductApi.Controllers
{
    public class CarController : ApiController
    {
        [HttpGet]
        public IEnumerable<CarProduct> GetAllCars()
        {
            using (ProductsApiEntities productobject = new ProductsApiEntities())
            {
                return productobject.CarProducts.ToList();
            }
        }

        [HttpPost]
        public void AddCar([FromBody]CarProduct carObject)

        {
            using (ProductsApiEntities productobject= new ProductsApiEntities())
            {
                var id = productobject.CarProducts.Max(product => product.ProductId);
                int maximumid = Int32.Parse(id.ToString());
                maximumid += 1;
                carObject.ProductId = maximumid;
                productobject.CarProducts.Add(carObject);
                productobject.SaveChanges();
            }

        }
        [HttpPut]
        public void CarOperation([FromBody]Item item)
        {
            using (ProductsApiEntities productobject = new ProductsApiEntities())
            {
                if (item.OperationType == "save")
                {
                    var referenceobject = productobject.CarProducts.Find(item.ProductId);
                    string IsSaved = productobject.CarProducts.Find(item.ProductId).IsSaved;
                    IsSaved = "true";
                    referenceobject.IsSaved = IsSaved;
                    productobject.SaveChanges();
                }
                else
                {
                    var referenceobject = productobject.CarProducts.Find(item.ProductId);
                    string IsBooked = productobject.CarProducts.Find(item.ProductId).IsBooked;
                    IsBooked = "true";
                    referenceobject.IsBooked = IsBooked;
                    productobject.SaveChanges();
                }
            }
        }
    }
}
