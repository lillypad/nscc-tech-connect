##########################################################################
# Copyright (C) 2018  Lilly Chalupowski                                  #
#                                                                        #
# This program is free software: you can redistribute it and/or modify   #
# it under the terms of the GNU General Public License as published by   #
# the Free Software Foundation, either version 3 of the License, or      #
# (at your option) any later version.                                    #
#                                                                        #
# This program is distributed in the hope that it will be useful,        #
# but WITHOUT ANY WARRANTY; without even the implied warranty of         #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          #
# GNU General Public License for more details.                           #
#                                                                        #
# You should have received a copy of the GNU General Public License      #
# along with this program.  If not, see <https://www.gnu.org/licenses/>. #
##########################################################################

.PHONY: all
.PHONY: docs

all: docs

docs:
	cd docs/ && \
		pdflatex -shell-escape presentation.tex && \
		pdflatex -shell-escape presentation.tex && \
		rm -f *.log && \
		rm -f *.aux && \
		rm -f *.toc && \
		rm -f *.out && \
		rm -f *.nav && \
		rm -f *.snm && \
		rm -f *.vrb && \
		rm -rf _minted-presentation/
