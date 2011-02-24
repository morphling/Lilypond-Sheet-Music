\version "2.12.3"
\include "deutsch.ly"

#(set-global-staff-size 19)

\header {
  title = "Morenita"
  subtitle = "(Spanish folk song)"
  arranger = "arr.: Eythor Thorlaksson"
  enteredby = "cellist (2011-01-19)"
}

voiceconsts = {
 \key e \minor
 \time 3/4
% \clef "treble"
 \clef "bass"
 \override TextSpanner #'(bound-details left text) = "rit."
 \numericTimeSignature
 \compressFullBarRests
 \tempo "Allegretto " 4=180
}

mfDolce = \markup { \dynamic mf \italic { "dolce" } }
dac = \markup { D.C. " al Coda" }

midilow = "bassoon"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"

\book {
  \score {
    \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 1"
%	\va
	\transpose e e, { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 2"
%	\vb
	\transpose e e, { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 3"
%	\vc
	\transpose e e, { \vc }
      }
    >>

    \layout {}

    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 180 4)
      }
    }
  }
}