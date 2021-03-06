\name{druid.query.topN}
\alias{druid.query.topN}
\title{Query to find the topN dimension values of a datasource}
\usage{
  druid.query.topN(url = druid.url(), dataSource,
    intervals, aggregations, filter = NULL,
    granularity = "all", postAggregations = NULL, n,
    dimension, metric, context = NULL, rawData = F,
    verbose = F, ...)
}
\arguments{
  \item{url}{URL to connect to druid, defaults to
  druid.url()}

  \item{dataSource}{name of the data source to query}

  \item{intervals}{the time period to retrieve data for as
  an interval or list of interval objects}

  \item{aggregations}{list of metric aggregations to
  compute for this datasource}

  \item{filter}{The filter specifying the subset of the
  data to extract.}

  \item{granularity}{time granularity for finding topN
  values, can be "all", "day", "hour", "minute".}

  \item{postAggregations}{Further operations to perform
  after the data has been filtered and aggregated.}

  \item{n}{The number of dimensions to return}

  \item{dimension}{name of the dimension over which to
  compute top N}

  \item{metric}{name of the metric (aggregation) used to
  rank values in top N}

  \item{rawData}{boolean indicating whether or not to
  return the JSON in a list before converting to a data
  frame}

  \item{verbose}{prints out the JSON query sent to druid}
}
\value{
  Returns a dataframe with the largest values of the
  dimension, as well as the requested metrics
}
\description{
  For a particular datasource, find the top n dimension
  values for a given metric
}
\seealso{
  \code{\link{druid.query.timeseries}}
  \code{\link{druid.query.groupBy}}
}

