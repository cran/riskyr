% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/init_prob.R
\docType{data}
\name{spec}
\alias{spec}
\alias{TNR}
\title{The specificity of a decision process or diagnostic procedure.}
\format{
An object of class \code{numeric} of length 1.
}
\usage{
spec
}
\description{
\code{spec} defines a decision's specificity value (or correct rejection rate):
The conditional probability of the decision being negative
if the condition is FALSE.
}
\details{
Understanding or obtaining the specificity value \code{spec}:

\itemize{

  \item Definition:
  \code{spec} is the conditional probability
  for a (correct) negative decision given that
  the condition is \code{FALSE}:

  \code{spec = p(decision = negative | condition = FALSE)}

  or the probability of correctly detecting false cases
  (\code{condition = FALSE}).

  \item Perspective:
  \code{spec} further classifies
  the subset of \code{\link{cond_false}} individuals
  by decision (\code{spec = cr/cond_false}).


  \item Alternative names:
  true negative rate (\code{TNR}),
  correct rejection rate,
  \code{1 - alpha}


  \item Relationships:

  a. \code{spec} is the complement of the
  false alarm rate \code{\link{fart}}:

  \code{spec = 1 - fart}

  b. \code{spec} is the opposite conditional probability
  -- but not the complement --
  of the negative predictive value \code{\link{NPV}}:

  \code{NPV = p(condition = FALSE | decision = negative)}


  \item In terms of frequencies,
  \code{spec} is the ratio of
  \code{\link{cr}} divided by \code{\link{cond_false}}
  (i.e., \code{\link{fa} + \link{cr}}):

  \code{spec = cr/cond_false = cr/(fa + cr)}


  \item Dependencies:
  \code{spec} is a feature of a decision process
  or diagnostic procedure and a measure of
  correct decisions (true negatives).

  However, due to being a conditional probability,
  the value of \code{spec} is not intrinsic to
  the decision process, but also depends on the
  condition's prevalence value \code{\link{prev}}.

}
}
\examples{
spec <- .75     # sets a specificity value of 75\%
spec <- 75/100  # (decision = negative) for 75 out of 100 people with (condition = FALSE)
is_prob(spec)   # TRUE

}
\references{
Consult \href{https://en.wikipedia.org/wiki/Sensitivity_and_specificity}{Wikipedia} for additional information.
}
\seealso{
\code{\link{comp_spec}} computes \code{spec} as the complement of \code{\link{fart}};
\code{\link{prob}} contains current probability information;
\code{\link{comp_prob}} computes current probability information;
\code{\link{num}} contains basic numeric parameters;
\code{\link{init_num}} initializes basic numeric parameters;
\code{\link{comp_freq}} computes current frequency information;
\code{\link{is_prob}} verifies probabilities.

Other probabilities: 
\code{\link{FDR}},
\code{\link{FOR}},
\code{\link{NPV}},
\code{\link{PPV}},
\code{\link{acc}},
\code{\link{err}},
\code{\link{fart}},
\code{\link{mirt}},
\code{\link{ppod}},
\code{\link{prev}},
\code{\link{sens}}

Other essential parameters: 
\code{\link{cr}},
\code{\link{fa}},
\code{\link{hi}},
\code{\link{mi}},
\code{\link{prev}},
\code{\link{sens}}
}
\concept{essential parameters}
\concept{probabilities}
\keyword{datasets}
