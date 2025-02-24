#Disconnect-Graph

Connect-MgGraph -ClientID  -TenantId  -CertificateThumbprint  -NoWelcome

$UPN = "Lily@lilysdad.com"

$User = get-mguser -Filter "UserPrincipalName eq '$UPN'"

if ($user)
{
    #True
    Write-host "$UPN Exists!" -ForegroundColor Green
}
else 
{
    #False
    Write-host "$UPN Does not Exist!" -ForegroundColor Red
}
