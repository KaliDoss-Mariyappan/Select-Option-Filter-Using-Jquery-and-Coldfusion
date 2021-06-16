<!DOCTYPE html>
<html>
    <head>
        <title>Select Option Filter Using Jquery and Coldfusion</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="assets/css/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <cfoutput>
            <div class="container mt-5">
                <cfset selectBrand = application.filterObject.selectBrandsFunction()>
                <cfset selectProduct = application.filterObject.selectProductsFunction()>
                <select class="form-select form-control" id="brandSelect">
                    <option value="">Select All Brand Products</option>
                    <cfloop query="selectBrand">
                        <option value="#selectBrand.brandId#">#selectBrand.brandName#</option>
                    </cfloop>
                </select>
                <div class="row mt-3" id="selectProduct">
                    <cfloop query="selectProduct">
                        <div class="col-sm-3 productContent" data-id="#selectProduct.brandId#">
                            <div class="boxContent">#selectProduct.productName#</div>
                        </div>
                    </cfloop>
                </div>
            </div>
        </cfoutput>
        <script src="assets/js/filter.js"></script>
    </body>
</html>
