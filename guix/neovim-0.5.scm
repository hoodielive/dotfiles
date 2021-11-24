
;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020 Ludovic Courtès <ludo@gnu.org>
;;; Copyright © 2014, 2019 Andreas Enge <andreas@enge.fr>
;;; Copyright © 2012 Nikita Karetnikov <nikita@karetnikov.org>
;;; Copyright © 2014, 2015, 2016, 2018 Mark H Weaver <mhw@netris.org>
;;; Copyright © 2014 Alex Kost <alezost@gmail.com>
;;; Copyright © 2014, 2015 Manolis Fragkiskos Ragkousis <manolis837@gmail.com>
;;; Copyright © 2016, 2017, 2019, 2020, 2021 Efraim Flashner <efraim@flashner.co.il>
;;; Copyright © 2016, 2020 Jan (janneke) Nieuwenhuizen <janneke@gnu.org>
;;; Copyright © 2016, 2018 Alex Vong <alexvong1995@gmail.com>
;;; Copyright © 2017 Rene Saavedra <rennes@openmailbox.org>
;;; Copyright © 2017, 2020 Mathieu Othacehe <m.othacehe@gmail.com>
;;; Copyright © 2017, 2018, 2020 Marius Bakke <mbakke@fastmail.com>
;;; Copyright © 2017 Eric Bavier <bavier@member.fsf.org>
;;; Copyright © 2018 Tobias Geerinckx-Rice <me@tobias.gr>
;;; Copyright © 2018, 2019 Ricardo Wurmus <rekado@elephly.net>
;;; Copyright © 2020 Vitaliy Shatrov <D0dyBo0D0dyBo0@protonmail.com>
;;; Copyright © 2020 Chris Marusich <cmmarusich@gmail.com>
;;; Copyright © 2021 Leo Le Bouter <lle-bout@zaclys.net>
;;;
;;; This file is part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (gnu packages base)
  #:use-module ((guix licenses)
                #:select (gpl3+ lgpl2.0+ lgpl3+ public-domain))
  #:use-module (gnu packages)
  #:use-module (gnu packages acl)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages bison)
  #:use-module (gnu packages ed)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages hurd)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages gettext)
  #:use-module (guix i18n)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system trivial)
  #:use-module (ice-9 format)
  #:use-module (ice-9 match)
  #:use-module (ice-9 optargs)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-26)
  #:export (glibc
            libiconv-if-needed))

;;; Commentary:
;;;
;;; Base packages of the Guix-based GNU user-land software distribution.
;;;
;;; Code:

(define-public neovim
  (package
    (name "neovim")
    (version "0.5")
    (source (origin
              (method git-fetch)
              (uri (string-append "https://github.com/neovim/neovim" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0159e4daaed1347db8719c27946fcfdc4e49e92d"))))
    (build-system gnu-build-system)
    (synopsis "Neovim latest version.")
    (description
     "I just want to drink from the firehose.")
    (home-page "https://github.com/hoodielive/orun.git")
    (license gpl3+)))

