﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

/// <summary>
/// Summary description for RouteConfig
/// </summary>
public static class RouteConfig
{
    public static void RegisterRoutes(RouteCollection routes)
    {
        var settings = new FriendlyUrlSettings();
        settings.AutoRedirectMode = RedirectMode.Permanent;
        routes.EnableFriendlyUrls(settings);
    }
}