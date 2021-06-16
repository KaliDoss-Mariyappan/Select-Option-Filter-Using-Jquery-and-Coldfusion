<cfcomponent>
    <cffunction name="selectBrandsFunction" access="public" returntype="query">
        <cfset var selectBrand = ''>
        <cfquery name="selectBrand" datasource="demoSource">
            SELECT * FROM brand
        </cfquery>
        <cfreturn selectBrand>
    </cffunction>

    <cffunction name="selectProductsFunction" access="public" returntype="query">
        <cfset var selectProduct = ''>
        <cfquery name="selectProduct" datasource="demoSource">
            SELECT * FROM product
        </cfquery>
        <cfreturn selectProduct>
    </cffunction>

</cfcomponent>