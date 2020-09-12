### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 0786acf0-f4c6-11ea-0a77-99348b20bc26
using TikzPictures

# ╔═╡ 347164d0-f4c6-11ea-14a8-1dc101a8a271
pomdps_logo = TikzPicture(L"""
\node[minimum size=1cm, draw=black, fill=julia_red, circle] (s) {\textcolor{white}{$s_t$}};
\node[minimum size=1cm, draw=black, fill=julia_red, circle, right=1.5cm of s] (s2) {\textcolor{white}{$s_{t+1}$}};
\node[minimum size=1cm, draw=black, fill=julia_purple, circle, below=0.5cm of s] (o) {\textcolor{white}{$o_t$}};
\node[minimum size=1.3cm, draw=black, fill=julia_green, diamond, above=0.5cm of s] (r) {\textcolor{white}{$r_t$}};
\node[minimum size=1cm, draw=black, fill=julia_blue, rectangle, above=0.5cm of r] (a) {\textcolor{white}{$a_t$}};
\node[minimum size=1cm, draw=black, fill=julia_blue, rectangle, left=1.5cm of a] (am1) {\textcolor{white}{$a_{t-1}$}};

\node[minimum size=1.3cm, draw=lightgray, fill=julia_green!40, diamond] (rm1) at (am1|-r) {\textcolor{white}{$r_{t-1}$}};
\node[minimum size=1cm,   draw=lightgray, fill=julia_red!40, circle]  (sm1) at (am1|-s) {\textcolor{white}{$s_{t-1}$}};
\node[minimum size=1cm,   draw=lightgray, fill=julia_purple!40, circle]  (om1) at (am1|-o) {\textcolor{white}{$o_{t-1}$}};

\node[minimum size=1cm,   draw=lightgray, fill=julia_blue!40, rectangle] (ap1) at (s2|-a) {\textcolor{white}{$a_{t+1}$}};
\node[minimum size=1.3cm, draw=lightgray, fill=julia_green!40, diamond]   (rp1) at (s2|-r) {\textcolor{white}{$r_{t+1}$}};
\node[minimum size=1cm,   draw=lightgray, fill=julia_purple!40, circle]    (op1) at (s2|-o) {\textcolor{white}{$o_{t+1}$}};

\draw[->] (s) -- (o);
\draw[->] (s) -- (s2);
\draw[->] (s) -- (r);
\draw[->] (a) -- (r);
\draw[->] (a) [out=0,in=135] to (s2);
\draw[->] (am1) [out=0,in=135] to (o);

\useasboundingbox ($(current bounding box.south west)-(1mm,1mm)$) rectangle ($(current bounding box.north east)+(1mm,1mm)$);
""",
preamble="""
\\definecolor{julia_blue}{HTML}{4063D8}
\\definecolor{julia_green}{HTML}{389826}
\\definecolor{julia_purple}{HTML}{9558B2}
\\definecolor{julia_red}{HTML}{CB3C33}
\\usetikzlibrary{shapes}
\\usetikzlibrary{calc}
\\usetikzlibrary{positioning}
\\usetikzlibrary{arrows}
\\tikzset{every picture/.style={semithick, >=stealth'}}
""",
options="every node/.style={scale=1.25}")

# ╔═╡ 3ca9e2d0-f4c6-11ea-2f2d-73b96c1c3c25
save(SVG("../pomdps_logo.svg"), pomdps_logo)

# ╔═╡ a2c2dc10-f4c7-11ea-3e8a-edbe3457547d
save(PDF("../pomdps_logo.pdf"), pomdps_logo)

# ╔═╡ Cell order:
# ╠═0786acf0-f4c6-11ea-0a77-99348b20bc26
# ╠═347164d0-f4c6-11ea-14a8-1dc101a8a271
# ╠═3ca9e2d0-f4c6-11ea-2f2d-73b96c1c3c25
# ╠═a2c2dc10-f4c7-11ea-3e8a-edbe3457547d
