'use strict';

module.exports = function (Availableproduct) {
  const productObject = {
    "quantity": "number",
    "manDate": "date",
    "expDate": "date",
    "id": "string",
    "productId": "string",
    "createdAt": "date",
    "updatedAt": "date"
  };

  Availableproduct.addProduct = async function (product) {
    const productModel = Availableproduct.app.models.product;
    let checkResponse = await productModel.findOne(
      {where: {and: [{productName: product.productName}, {brandName: product.brandName}]}});
    if (checkResponse === null) {
      checkResponse = await productModel.create(
        {
          "productName": `${product.productName}`,
          "brandName": `${product.brandName}`,
          "category": `${product.category}`,
          "description": `${product.description}`,
        }
      );
      return await createAvailable(product, checkResponse);
    }
    const availableProduct = await Availableproduct.findOne(
      {where: {productId: checkResponse.id}});
    if (availableProduct == null) {
      return await createAvailable(product, checkResponse);
    }
    return await Availableproduct.update(
      {
        "quantity": availableProduct.quantity + product.quantity,
        "manDate": `${product.manDate}`,
        "expDate": `${product.manDate}`,
        "productId": `${checkResponse.id}`,
      }
    );
  }

  Availableproduct.sellProduct = async function (product) {
    //TODO
  }

  Availableproduct.remoteMethod('addProduct', {
    accepts: [{
      arg: 'product', type: {
        "imageUrl": "string",
        "productName": "string",
        "brandName": "string",
        "category": "string",
        "quantity": "number",
        "description": "string",
        "manDate": "date",
        "expDate": "date",
      },
      http: {source: 'body'},
    }],
    returns: {
      type: productObject, root: true
    },
    "description": "Adds product to available products list after crosschecking"
  });

  Availableproduct.remoteMethod('sellProduct', {
    accepts: [{
      arg: 'product',
      type: {
        "imageUrl": "string",
        "productName": "string",
        "brandName": "string",
        "category": "string",
        "quantity": "number",
        "description": "string",
        "manDate": "date",
        "expDate": "date",
      },
      http: {source: 'body'}
    }],
    returns: {type: productObject, root: true},
    "description": "Preforms product sell"
  });

  const createAvailable = async function (product, checkResponse) {
    return Availableproduct.create(
      {
        "quantity": product.quantity,
        "manDate": `${product.manDate}`,
        "expDate": `${product.manDate}`,
        "productId": `${checkResponse.id}`,
      }
    );
  }
};
