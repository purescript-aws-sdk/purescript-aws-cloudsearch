## Module AWS.CloudSearch.Requests

#### `createDomain`

``` purescript
createDomain :: forall eff. Service -> CreateDomainRequest -> Aff (exception :: EXCEPTION | eff) CreateDomainResponse
```

<p>Creates a new search domain.</p>

#### `defineIndexField`

``` purescript
defineIndexField :: forall eff. Service -> DefineIndexFieldRequest -> Aff (exception :: EXCEPTION | eff) DefineIndexFieldResponse
```

<p>Configures an <code>IndexField</code> for the search domain. Used to create new fields and modify existing ones. If the field exists, the new configuration replaces the old one. You can configure a maximum of 200 index fields.</p>

#### `defineRankExpression`

``` purescript
defineRankExpression :: forall eff. Service -> DefineRankExpressionRequest -> Aff (exception :: EXCEPTION | eff) DefineRankExpressionResponse
```

<p>Configures a <code>RankExpression</code> for the search domain. Used to create new rank expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. You can configure a maximum of 50 rank expressions.</p>

#### `deleteDomain`

``` purescript
deleteDomain :: forall eff. Service -> DeleteDomainRequest -> Aff (exception :: EXCEPTION | eff) DeleteDomainResponse
```

<p>Permanently deletes a search domain and all of its data.</p>

#### `deleteIndexField`

``` purescript
deleteIndexField :: forall eff. Service -> DeleteIndexFieldRequest -> Aff (exception :: EXCEPTION | eff) DeleteIndexFieldResponse
```

<p>Removes an <code>IndexField</code> from the search domain.</p>

#### `deleteRankExpression`

``` purescript
deleteRankExpression :: forall eff. Service -> DeleteRankExpressionRequest -> Aff (exception :: EXCEPTION | eff) DeleteRankExpressionResponse
```

<p>Removes a <code>RankExpression</code> from the search domain.</p>

#### `describeAvailabilityOptions`

``` purescript
describeAvailabilityOptions :: forall eff. Service -> DescribeAvailabilityOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAvailabilityOptionsResponse
```

<p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

#### `describeDefaultSearchField`

``` purescript
describeDefaultSearchField :: forall eff. Service -> DescribeDefaultSearchFieldRequest -> Aff (exception :: EXCEPTION | eff) DescribeDefaultSearchFieldResponse
```

<p>Gets the default search field configured for the search domain.</p>

#### `describeDomains`

``` purescript
describeDomains :: forall eff. Service -> DescribeDomainsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDomainsResponse
```

<p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default.</p>

#### `describeIndexFields`

``` purescript
describeIndexFields :: forall eff. Service -> DescribeIndexFieldsRequest -> Aff (exception :: EXCEPTION | eff) DescribeIndexFieldsResponse
```

<p>Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. Shows all fields by default.</p>

#### `describeRankExpressions`

``` purescript
describeRankExpressions :: forall eff. Service -> DescribeRankExpressionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeRankExpressionsResponse
```

<p>Gets the rank expressions configured for the search domain. Can be limited to specific rank expressions by name. Shows all rank expressions by default. </p>

#### `describeServiceAccessPolicies`

``` purescript
describeServiceAccessPolicies :: forall eff. Service -> DescribeServiceAccessPoliciesRequest -> Aff (exception :: EXCEPTION | eff) DescribeServiceAccessPoliciesResponse
```

<p>Gets information about the resource-based policies that control access to the domain's document and search services.</p>

#### `describeStemmingOptions`

``` purescript
describeStemmingOptions :: forall eff. Service -> DescribeStemmingOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeStemmingOptionsResponse
```

<p>Gets the stemming dictionary configured for the search domain.</p>

#### `describeStopwordOptions`

``` purescript
describeStopwordOptions :: forall eff. Service -> DescribeStopwordOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeStopwordOptionsResponse
```

<p>Gets the stopwords configured for the search domain.</p>

#### `describeSynonymOptions`

``` purescript
describeSynonymOptions :: forall eff. Service -> DescribeSynonymOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSynonymOptionsResponse
```

<p>Gets the synonym dictionary configured for the search domain.</p>

#### `indexDocuments`

``` purescript
indexDocuments :: forall eff. Service -> IndexDocumentsRequest -> Aff (exception :: EXCEPTION | eff) IndexDocumentsResponse
```

<p>Tells the search domain to start indexing its documents using the latest text processing options and <code>IndexFields</code>. This operation must be invoked to make options whose <a>OptionStatus</a> has <code>OptionState</code> of <code>RequiresIndexDocuments</code> visible in search results.</p>

#### `updateAvailabilityOptions`

``` purescript
updateAvailabilityOptions :: forall eff. Service -> UpdateAvailabilityOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateAvailabilityOptionsResponse
```

<p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

#### `updateDefaultSearchField`

``` purescript
updateDefaultSearchField :: forall eff. Service -> UpdateDefaultSearchFieldRequest -> Aff (exception :: EXCEPTION | eff) UpdateDefaultSearchFieldResponse
```

<p>Configures the default search field for the search domain. The default search field is the text field that is searched when a search request does not specify which fields to search. By default, it is configured to include the contents of all of the domain's text fields. </p>

#### `updateServiceAccessPolicies`

``` purescript
updateServiceAccessPolicies :: forall eff. Service -> UpdateServiceAccessPoliciesRequest -> Aff (exception :: EXCEPTION | eff) UpdateServiceAccessPoliciesResponse
```

<p>Configures the policies that control access to the domain's document and search services. The maximum size of an access policy document is 100 KB.</p>

#### `updateStemmingOptions`

``` purescript
updateStemmingOptions :: forall eff. Service -> UpdateStemmingOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateStemmingOptionsResponse
```

<p>Configures a stemming dictionary for the search domain. The stemming dictionary is used during indexing and when processing search requests. The maximum size of the stemming dictionary is 500 KB.</p>

#### `updateStopwordOptions`

``` purescript
updateStopwordOptions :: forall eff. Service -> UpdateStopwordOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateStopwordOptionsResponse
```

<p>Configures stopwords for the search domain. Stopwords are used during indexing and when processing search requests. The maximum size of the stopwords dictionary is 10 KB.</p>

#### `updateSynonymOptions`

``` purescript
updateSynonymOptions :: forall eff. Service -> UpdateSynonymOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateSynonymOptionsResponse
```

<p>Configures a synonym dictionary for the search domain. The synonym dictionary is used during indexing to configure mappings for terms that occur in text fields. The maximum size of the synonym dictionary is 100 KB. </p>


