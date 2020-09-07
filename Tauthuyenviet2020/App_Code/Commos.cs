using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Commos
/// </summary>
public static class Commos
{
    public static string SpitImage(this object value)
    {
        if (value == null)
        {
            return string.Empty;
        }
        string[] result = value.ToString().Split('\n');
        return result[0];
    }

    public static string[] SplitImageList(this object value)
    {
        if (value == null)
            return new string[] { };
        string[] result = value.ToString().Trim().Split('\n');
        return result;
    }
}