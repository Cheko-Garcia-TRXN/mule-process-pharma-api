%dw 2.0
//Global Functions


//Si es un cliente interco
var intercos=["MXS0001","MXS0002","MXS0003","MXS0008","MXS0012","MXS0013","MXS0014","MXS0019","MXS0031","MXS0036","MXS0042","MXS0048","MXS0051","MXS0052","MXS0053","MXS0055","MXS0059","MXS0058"]

fun isInterco(client: String)
= if(intercos contains client) "TL01" else "TL00"

fun isIntercotxp(client: String)
= if(intercos contains client) "TL11" else "TL10"



fun tipoServicio(cuentaFinanciera: String)
= if(cuentaFinanciera[2 to 3] == "01") "C10" else if(cuentaFinanciera[2 to 3] == "03") "C17" else ""  

fun terminoServicio(cuentaFinanciera: String)
= if(cuentaFinanciera[2 to 3] == "01") "01" else if(cuentaFinanciera[2 to 3] == "02") "02" else if(cuentaFinanciera[2 to 3] == "03") "03" else "99"  

fun tipoCamion(cuentaFinanciera: String)
= if(cuentaFinanciera[6 to 7] == "01") "0001" else if(cuentaFinanciera[6 to 7] == "02") "0002" else if(cuentaFinanciera[6 to 7] == "03") "0003" else "9999"

fun isIntercoToMaterial(carrierCode: String)
= if(intercos contains carrierCode) "materialIntercoConverter" else "materialConverter"

fun isIntercoToMaterialText(carrierCode: String)
= if(intercos contains carrierCode) "materialIntercoConverterText" else "materialConverterText"

/* Funciones de transformacion para SUVI */
fun isIntercoSUVI(customerCode: String)
=if(intercos contains customerCode ) "GS20" else "GS10"

fun getOficinaVentasSUVI(profitCenter: String)
=if(profitCenter[8 to 9]=="01")"G102" else
if(profitCenter[8 to 9]=="02")"G100" else
if(profitCenter[8 to 9]=="03")"G101" else "0"

fun getGrupoVendedoresSUVI(profitCenter: String)
=if(profitCenter[8 to 9]=="01")"G23" else
if(profitCenter[8 to 9]=="02")"G21" else
if(profitCenter[8 to 9]=="03")"G22" else "0"

fun getZonaVentasSUVI(profitCenter: String)
=if(profitCenter[8 to 9]=="01")"Z01001" else
if(profitCenter[8 to 9]=="02")"Z02005" else
if(profitCenter[8 to 9]=="03")"Z02007" else "0"

fun getBaseSUVI(profitCenter: String)
=if(profitCenter[8 to 9]=="01")"CMX" else
if(profitCenter[8 to 9]=="02")"GDL" else
if(profitCenter[8 to 9]=="03") "QRO" else "0"

fun getCentroSUVI(profitCenter: String)
=if(profitCenter[8 to 9]=="01")"1121" else
if(profitCenter[8 to 9]=="02")"1122" else
if(profitCenter[8 to 9]=="03")"1120" else "0"