local helpers = require("core.snippets.helper-functions")
local get_visual = helpers.get_visual

local tex = {}
tex.in_mathzone = function() return vim.fn['vimtex#syntax#in_mathzone']() == 1 end
tex.in_text = function() return not tex.in_mathzone() end

local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
    s({trig=";a", snippetType="autosnippet"},
    {
        t("\\alpha"),
    }),
    s({trig=";b", snippetType="autosnippet"},
    {
        t("\\beta"),
    }),
    s({trig=";g", snippetType="autosnippet"},
    {
        t("\\gamma"),
    }),
    s({trig=";G", snippetType="autosnippet"},
    {
        t("\\Gamma"),
    }),
    s({trig=";d", snippetType="autosnippet"},
    {
        t("\\delta"),
    }),
    s({trig=";D", snippetType="autosnippet"},
    {
        t("\\Delta"),
    }),
    s({trig=";e", snippetType="autosnippet"},
    {
        t("\\epsilon"),
    }),
    s({trig=";ve", snippetType="autosnippet"},
    {
        t("\\varepsilon"),
    }),
    s({trig=";z", snippetType="autosnippet"},
    {
        t("\\zeta"),
    }),
    s({trig=";h", snippetType="autosnippet"},
    {
        t("\\eta"),
    }),
    s({trig=";o", snippetType="autosnippet"},
    {
        t("\\theta"),
    }),
    s({trig=";vo", snippetType="autosnippet"},
    {
        t("\\vartheta"),
    }),
    s({trig=";O", snippetType="autosnippet"},
    {
        t("\\Theta"),
    }),
    s({trig=";k", snippetType="autosnippet"},
    {
        t("\\kappa"),
    }),
    s({trig=";l", snippetType="autosnippet"},
    {
        t("\\lambda"),
    }),
    s({trig=";L", snippetType="autosnippet"},
    {
        t("\\Lambda"),
    }),
    s({trig=";m", snippetType="autosnippet"},
    {
        t("\\mu"),
    }),
    s({trig=";n", snippetType="autosnippet"},
    {
        t("\\nu"),
    }),
    s({trig=";x", snippetType="autosnippet"},
    {
        t("\\xi"),
    }),
    s({trig=";X", snippetType="autosnippet"},
    {
        t("\\Xi"),
    }),
    s({trig=";i", snippetType="autosnippet"},
    {
        t("\\pi"),
    }),
    s({trig=";I", snippetType="autosnippet"},
    {
        t("\\Pi"),
    }),
    s({trig=";r", snippetType="autosnippet"},
    {
        t("\\rho"),
    }),
    s({trig=";s", snippetType="autosnippet"},
    {
        t("\\sigma"),
    }),
    s({trig=";S", snippetType="autosnippet"},
    {
        t("\\Sigma"),
    }),
    s({trig=";t", snippetType="autosnippet"},
    {
        t("\\tau"),
    }),
    s({trig=";f", snippetType="autosnippet"},
    {
        t("\\phi"),
    }),
    s({trig=";vf", snippetType="autosnippet"},
    {
        t("\\varphi"),
    }),
    s({trig=";F", snippetType="autosnippet"},
    {
        t("\\Phi"),
    }),
    s({trig=";c", snippetType="autosnippet"},
    {
        t("\\chi"),
    }),
    s({trig=";p", snippetType="autosnippet"},
    {
        t("\\psi"),
    }),
    s({trig=";P", snippetType="autosnippet"},
    {
        t("\\Psi"),
    }),
    s({trig=";w", snippetType="autosnippet"},
    {
        t("\\omega"),
    }),
    s({trig=";W", snippetType="autosnippet"},
    {
        t("\\Omega"),
    }),
    s({trig = "([^%a])l%(", regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
    "<>\\left(<>\\right)",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    )
    ),
    s({trig = "([^%a])l%[", regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
    "<>\\left[<>\\right]",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    )
    ),
    s({trig = "([^%a])l%{", regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
    "<>\\left\\{<>\\right\\}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    )
    ),
    s({trig = "([^%a])l%|", regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
    "<>\\left|<>\\right|",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    )
    ),
    s({trig = "``", snippetType="autosnippet"},
    fmta(
    ",,<>''",
    {
        d(1, get_visual),
    }
    )
    ),
    s({trig="env", snippetType="autosnippet"},
      fmta(
        [[
        \begin{<>}
            <>
        \end{<>}
      ]],
        {
          i(1),
          d(2, get_visual),
          rep(1),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="eqn", snippetType="autosnippet"},
      fmta(
        [[
        \begin{equation*}
            <>
        \end{equation*}
      ]],
        {
          i(1),
        }
      ),
      { condition = line_begin }
    ),
    s({trig="aln", snippetType="autosnippet"},
      fmta(
        [[
        \begin{align*}
            <>
        \end{align*}
      ]],
        {
          i(1),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="gth", snippetType="autosnippet"},
      fmta(
        [[
        \begin{gather*}
            <>
        \end{gather*}
      ]],
        {
          i(1),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="prb", snippetType="autosnippet"},
      fmta(
        [[
        \begin{problem}
            <>
        \end{problem}
      ]],
        {
          i(1),
        }
      ),
      { condition = line_begin }
    ),
    s({trig="sln", snippetType="autosnippet"},
      fmta(
        [[
        \begin{solution}
            <>
        \end{solution}
      ]],
        {
          i(1),
        }
      ),
      { condition = line_begin }
    ),
    s({trig="slp", snippetType="autosnippet"},
      fmta(
        [[
        \begin{solproof}
            <>
        \end{solproof}
      ]],
        {
          i(1),
        }
      ),
      { condition = line_begin }
    ),
    s({trig="thm", snippetType="autosnippet"},
      fmta(
        [[
        \begin{theorem}
            <>
        \end{theorem}
      ]],
        {
          i(1),
        }
      ),
      { condition = line_begin }
    ),
    s({trig="prf", snippetType="autosnippet"},
      fmta(
        [[
        \begin{proof}
            <>
        \end{proof}
      ]],
        {
          i(1),
        }
      ),
      { condition = line_begin }
    ),
    s({trig="itt", snippetType="autosnippet"},
      fmta(
        [[
        \begin{itemize}
            \item <>
        \end{itemize}
      ]],
        {
          i(0),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="enn", snippetType="autosnippet"},
      fmta(
        [[
        \begin{enumerate}[label=(\Roman*)]
            \item <>
        \end{enumerate}
      ]],
        {
          i(0),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="tsk", snippetType="autosnippet"},
      fmta(
        [[
        \begin{tasks}[label=\textbf{\alph*})](<>)
            \task <>
        \end{tasks}
      ]],
        {
          i(1),
          i(2),
        }
      ),
      {condition = line_begin}
    ),
    s({trig="bmat", snippetType="autosnippet"},
      fmta(
        [[
        \begin{bmatrix}[<>]
            <>
        \end{bmatrix}
      ]],
        {
          i(1),
          i(2),
        }
      ),
      {condition = line_bgein and tex.in_mathzone}
    ),
    s({trig = "fig", snippetType="autosnippet"},
      fmta(
        [[
        \begin{figure}[H]
          \centering
          \caption{<>}
          \label{fig:<>}
        \end{figure}
        ]],
        {
          i(1),
          i(2),
        }
      ),
      { condition = line_begin }
    ),
    s({trig = "frm", snippetType="autosnippet"},
      fmta(
        [[
        \begin{frame}
        \frametitle{<>}
            <>
        \end{frame}
        ]],
        {
          i(1),
          i(2),
        }
      ),
      { condition = line_begin }
    ),
    s({trig = "([^%a])vv", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
      "<>\\vec{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
      }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%a])bar", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
      "<>\\overline{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
      }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%a])ff", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\frac{<>}{<>}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
        i(2),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%\\])sq", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\sqrt{<>}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%\\])bnn", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\binom{<>}{<>}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        i(1),
        i(2),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%a%\\])lim", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\lim_{<>\\to<>}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        i(1),
        i(2),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%a])summ", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
      "<>\\sum_{<>}^{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        i(1),
        i(2),
      }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%a])prodd", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
      "<>\\prod_{<>}^{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        i(1),
        i(2),
      }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%a])intt", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\int_{<>}^{<>}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        i(1),
        i(2),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "lg", snippetType="autosnippet"},
    {
        t("\\ln"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "sin", snippetType="autosnippet"},
    {
        t("\\sin"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "cos", snippetType="autosnippet"},
    {
        t("\\cos"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "tg", snippetType="autosnippet"},
    {
        t("\\tg"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "ctg", snippetType="autosnippet"},
    {
        t("\\ctg"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "asin", snippetType="autosnippet"},
    {
        t("\\arcsin"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "acos", snippetType="autosnippet"},
    {
        t("\\arccos"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "atg", snippetType="autosnippet"},
    {
        t("\\arctg"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "actg", snippetType="autosnippet"},
    {
        t("\\arcctg"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "**", snippetType="autosnippet"},
    {
        t("\\cdot"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "oo", snippetType="autosnippet"},
    {
        t("\\infty"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = ":=", snippetType="autosnippet"},
    {
        t("\\coloneqq"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "ii", snippetType="autosnippet"},
    {
        t("\\ii"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "ee", snippetType="autosnippet"},
    {
        t("\\ee"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "dd", snippetType="autosnippet"},
    {
        t("\\dd"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "<-", snippetType="autosnippet"},
    {
        t("\\Leftarrow"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "->", snippetType="autosnippet"},
    {
        t("\\Rightarrow"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "<->", snippetType="autosnippet"},
    {
        t("\\Leftrightarrow"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "<-->", snippetType="autosnippet"},
    {
        t("\\xleftrightarrow"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "=>", snippetType="autosnippet"},
    {
        t("\\implies"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "<=>", snippetType="autosnippet"},
    {
        t("\\iff"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "aa", snippetType="autosnippet"},
    {
        t("\\cap"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "uu", snippetType="autosnippet"},
    {
        t("\\cup"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "baa", snippetType="autosnippet"},
    {
        t("\\bigcap"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "buu", snippetType="autosnippet"},
    {
        t("\\bigcup"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "sbs", snippetType="autosnippet"},
    {
        t("\\subseteq"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "eset", snippetType="autosnippet"},
    {
        t("\\emptyset"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "smi", snippetType="autosnippet"},
    {
        t("\\setminus"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "inn", snippetType="autosnippet"},
    {
        t("\\in"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "fora", snippetType="autosnippet"},
    {
        t("\\forall"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "exi", snippetType="autosnippet"},
    {
        t("\\exists"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "NN", snippetType="autosnippet"},
    {
        t("\\N"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "ZZ", snippetType="autosnippet"},
    {
        t("\\Z"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "QQ", snippetType="autosnippet"},
    {
        t("\\Q"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "RR", snippetType="autosnippet"},
    {
        t("\\R"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "CC", snippetType="autosnippet"},
    {
        t("\\C"),
    },
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%\\])tt", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\text{ <> }",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%\\])inter", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\intertext{ <> }",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    ),
    {condition = tex.in_mathzone}
    ),
    s({trig = "([^%\\])mk", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\(<>\\)",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    ),
    {condition = tex.in_text}
    ),
    s({trig = "([^%\\])emph", wordTrig = false, regTrig = true, snippetType="autosnippet"},
    fmta(
    "<>\\emph{<>}",
    {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
    }
    ),
    {condition = tex.in_text}
    ),
}
