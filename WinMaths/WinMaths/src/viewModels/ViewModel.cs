﻿using System;
using WinMaths.src.model;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinMaths.src.viewModels
{
    public class ViewModel
    {

    }

    public bool CreateGraphic(Graphic g)
    {
        if (g == null)
        {
            throw new ArgumentNullException(nameof(g));
        }

        bool result = false;
        return result;
    }
}