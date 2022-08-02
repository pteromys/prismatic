all: prismatic.pdf prismatic.midi

prismatic.pdf: prismatic.ly Makefile
	lilypond "$<"

# On GNU Make 4.3 or higher we could instead write the above declaration as
#     prismatic.pdf prismatic.midi &: prismatic.ly Makefile
# See under "grouped explicit targets" in
#     https://lists.gnu.org/archive/html/info-gnu/2020-01/msg00004.html
prismatic.midi: prismatic.pdf
