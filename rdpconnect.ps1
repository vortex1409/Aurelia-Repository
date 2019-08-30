while($Server -ne 0)
{
    $Server= Read-Host -Prompt 'Enter Server Name: '
    $connectionstring = $Server
    $User=''
    if($Server -eq 'Server01')
    {
        $Password=''
    }
    elseif($Server -eq 'Server02')
    {
        $Password=''
    }
    elseif($Server -eq 'Server03')
    {
        $Password=''
    }
    else
    {
        $Password=''
    }
    cmdkey /generic:TERMSRV/$connectionstring /user:$User /pass:$Password
    mstsc /v:$connectionstring /f
}
