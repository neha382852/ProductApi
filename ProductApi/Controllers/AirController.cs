﻿using DataAccessLibrary;
using ProductApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProductApi.Controllers
{
    public class AirController : ApiController
    {
        [HttpGet]
        public IEnumerable<AirProduct> GetAllAirProducts()
        {
            using (ProductsApiEntities productobject = new ProductsApiEntities())
            {
                return productobject.AirProducts.ToList();
            }
        }

        [HttpPost]
        public void AddAirProduct([FromBody]AirProduct airObject)

        {
            using (ProductsApiEntities productobject = new ProductsApiEntities())
            {
                var id = productobject.AirProducts.Max(product => product.ProductId);
                int maximumid = Int32.Parse(id.ToString());
                maximumid += 1;
                airObject.ProductId = maximumid;
                productobject.AirProducts.Add(airObject);
                productobject.SaveChanges();
            }

        }
        [HttpPut]
        public void AirOperation([FromBody]Item item)
        {
            using (ProductsApiEntities productobject = new ProductsApiEntities())
            {
                if (item.OperationType == "save")
                {
                    var referenceobject = productobject.AirProducts.Find(item.ProductId);
                    string IsSaved = productobject.AirProducts.Find(item.ProductId).IsSaved;
                    IsSaved = "true";
                    referenceobject.IsSaved = IsSaved;
                    productobject.SaveChanges();
                 
                }
                else
                {
                    var referenceobject = productobject.AirProducts.Find(item.ProductId);
                    string IsBooked = productobject.AirProducts.Find(item.ProductId).IsBooked;
                    IsBooked = "true";
                    referenceobject.IsBooked = IsBooked;
                    productobject.SaveChanges();


                }
            }
        }
    }
}
