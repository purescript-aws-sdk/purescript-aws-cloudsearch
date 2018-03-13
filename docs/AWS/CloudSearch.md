## Module AWS.CloudSearch

<fullname>Amazon CloudSearch Configuration Service</fullname> <p>You use the configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p> <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region">Regions and Endpoints</a>.</p>

#### `createDomain`

``` purescript
createDomain :: forall eff. CreateDomainRequest -> Aff (exception :: EXCEPTION | eff) CreateDomainResponse
```

<p>Creates a new search domain.</p>

#### `defineIndexField`

``` purescript
defineIndexField :: forall eff. DefineIndexFieldRequest -> Aff (exception :: EXCEPTION | eff) DefineIndexFieldResponse
```

<p>Configures an <code>IndexField</code> for the search domain. Used to create new fields and modify existing ones. If the field exists, the new configuration replaces the old one. You can configure a maximum of 200 index fields.</p>

#### `defineRankExpression`

``` purescript
defineRankExpression :: forall eff. DefineRankExpressionRequest -> Aff (exception :: EXCEPTION | eff) DefineRankExpressionResponse
```

<p>Configures a <code>RankExpression</code> for the search domain. Used to create new rank expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. You can configure a maximum of 50 rank expressions.</p>

#### `deleteDomain`

``` purescript
deleteDomain :: forall eff. DeleteDomainRequest -> Aff (exception :: EXCEPTION | eff) DeleteDomainResponse
```

<p>Permanently deletes a search domain and all of its data.</p>

#### `deleteIndexField`

``` purescript
deleteIndexField :: forall eff. DeleteIndexFieldRequest -> Aff (exception :: EXCEPTION | eff) DeleteIndexFieldResponse
```

<p>Removes an <code>IndexField</code> from the search domain.</p>

#### `deleteRankExpression`

``` purescript
deleteRankExpression :: forall eff. DeleteRankExpressionRequest -> Aff (exception :: EXCEPTION | eff) DeleteRankExpressionResponse
```

<p>Removes a <code>RankExpression</code> from the search domain.</p>

#### `describeAvailabilityOptions`

``` purescript
describeAvailabilityOptions :: forall eff. DescribeAvailabilityOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAvailabilityOptionsResponse
```

<p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

#### `describeDefaultSearchField`

``` purescript
describeDefaultSearchField :: forall eff. DescribeDefaultSearchFieldRequest -> Aff (exception :: EXCEPTION | eff) DescribeDefaultSearchFieldResponse
```

<p>Gets the default search field configured for the search domain.</p>

#### `describeDomains`

``` purescript
describeDomains :: forall eff. DescribeDomainsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDomainsResponse
```

<p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default.</p>

#### `describeIndexFields`

``` purescript
describeIndexFields :: forall eff. DescribeIndexFieldsRequest -> Aff (exception :: EXCEPTION | eff) DescribeIndexFieldsResponse
```

<p>Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. Shows all fields by default.</p>

#### `describeRankExpressions`

``` purescript
describeRankExpressions :: forall eff. DescribeRankExpressionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeRankExpressionsResponse
```

<p>Gets the rank expressions configured for the search domain. Can be limited to specific rank expressions by name. Shows all rank expressions by default. </p>

#### `describeServiceAccessPolicies`

``` purescript
describeServiceAccessPolicies :: forall eff. DescribeServiceAccessPoliciesRequest -> Aff (exception :: EXCEPTION | eff) DescribeServiceAccessPoliciesResponse
```

<p>Gets information about the resource-based policies that control access to the domain's document and search services.</p>

#### `describeStemmingOptions`

``` purescript
describeStemmingOptions :: forall eff. DescribeStemmingOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeStemmingOptionsResponse
```

<p>Gets the stemming dictionary configured for the search domain.</p>

#### `describeStopwordOptions`

``` purescript
describeStopwordOptions :: forall eff. DescribeStopwordOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeStopwordOptionsResponse
```

<p>Gets the stopwords configured for the search domain.</p>

#### `describeSynonymOptions`

``` purescript
describeSynonymOptions :: forall eff. DescribeSynonymOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSynonymOptionsResponse
```

<p>Gets the synonym dictionary configured for the search domain.</p>

#### `indexDocuments`

``` purescript
indexDocuments :: forall eff. IndexDocumentsRequest -> Aff (exception :: EXCEPTION | eff) IndexDocumentsResponse
```

<p>Tells the search domain to start indexing its documents using the latest text processing options and <code>IndexFields</code>. This operation must be invoked to make options whose <a>OptionStatus</a> has <code>OptionState</code> of <code>RequiresIndexDocuments</code> visible in search results.</p>

#### `updateAvailabilityOptions`

``` purescript
updateAvailabilityOptions :: forall eff. UpdateAvailabilityOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateAvailabilityOptionsResponse
```

<p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

#### `updateDefaultSearchField`

``` purescript
updateDefaultSearchField :: forall eff. UpdateDefaultSearchFieldRequest -> Aff (exception :: EXCEPTION | eff) UpdateDefaultSearchFieldResponse
```

<p>Configures the default search field for the search domain. The default search field is the text field that is searched when a search request does not specify which fields to search. By default, it is configured to include the contents of all of the domain's text fields. </p>

#### `updateServiceAccessPolicies`

``` purescript
updateServiceAccessPolicies :: forall eff. UpdateServiceAccessPoliciesRequest -> Aff (exception :: EXCEPTION | eff) UpdateServiceAccessPoliciesResponse
```

<p>Configures the policies that control access to the domain's document and search services. The maximum size of an access policy document is 100 KB.</p>

#### `updateStemmingOptions`

``` purescript
updateStemmingOptions :: forall eff. UpdateStemmingOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateStemmingOptionsResponse
```

<p>Configures a stemming dictionary for the search domain. The stemming dictionary is used during indexing and when processing search requests. The maximum size of the stemming dictionary is 500 KB.</p>

#### `updateStopwordOptions`

``` purescript
updateStopwordOptions :: forall eff. UpdateStopwordOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateStopwordOptionsResponse
```

<p>Configures stopwords for the search domain. Stopwords are used during indexing and when processing search requests. The maximum size of the stopwords dictionary is 10 KB.</p>

#### `updateSynonymOptions`

``` purescript
updateSynonymOptions :: forall eff. UpdateSynonymOptionsRequest -> Aff (exception :: EXCEPTION | eff) UpdateSynonymOptionsResponse
```

<p>Configures a synonym dictionary for the search domain. The synonym dictionary is used during indexing to configure mappings for terms that occur in text fields. The maximum size of the synonym dictionary is 100 KB. </p>

#### `AccessPoliciesStatus`

``` purescript
newtype AccessPoliciesStatus
  = AccessPoliciesStatus { "Options" :: PolicyDocument, "Status" :: OptionStatus }
```

<p>A <code>PolicyDocument</code> that specifies access policies for the search domain's services, and the current status of those policies.</p>

##### Instances
``` purescript
Newtype AccessPoliciesStatus _
Generic AccessPoliciesStatus _
Show AccessPoliciesStatus
Decode AccessPoliciesStatus
Encode AccessPoliciesStatus
```

#### `newAccessPoliciesStatus`

``` purescript
newAccessPoliciesStatus :: PolicyDocument -> OptionStatus -> AccessPoliciesStatus
```

Constructs AccessPoliciesStatus from required parameters

#### `newAccessPoliciesStatus'`

``` purescript
newAccessPoliciesStatus' :: PolicyDocument -> OptionStatus -> ({ "Options" :: PolicyDocument, "Status" :: OptionStatus } -> { "Options" :: PolicyDocument, "Status" :: OptionStatus }) -> AccessPoliciesStatus
```

Constructs AccessPoliciesStatus's fields from required parameters

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

<p>An Amazon Resource Name (ARN). See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `AvailabilityOptionsStatus`

``` purescript
newtype AvailabilityOptionsStatus
  = AvailabilityOptionsStatus { "Options" :: MultiAZ, "Status" :: OptionStatus }
```

<p>The status and configuration of the domain's availability options.</p>

##### Instances
``` purescript
Newtype AvailabilityOptionsStatus _
Generic AvailabilityOptionsStatus _
Show AvailabilityOptionsStatus
Decode AvailabilityOptionsStatus
Encode AvailabilityOptionsStatus
```

#### `newAvailabilityOptionsStatus`

``` purescript
newAvailabilityOptionsStatus :: MultiAZ -> OptionStatus -> AvailabilityOptionsStatus
```

Constructs AvailabilityOptionsStatus from required parameters

#### `newAvailabilityOptionsStatus'`

``` purescript
newAvailabilityOptionsStatus' :: MultiAZ -> OptionStatus -> ({ "Options" :: MultiAZ, "Status" :: OptionStatus } -> { "Options" :: MultiAZ, "Status" :: OptionStatus }) -> AvailabilityOptionsStatus
```

Constructs AvailabilityOptionsStatus's fields from required parameters

#### `BaseException`

``` purescript
newtype BaseException
  = BaseException { "Code" :: NullOrUndefined (ErrorCode), "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>An error occurred while processing the request.</p>

##### Instances
``` purescript
Newtype BaseException _
Generic BaseException _
Show BaseException
Decode BaseException
Encode BaseException
```

#### `newBaseException`

``` purescript
newBaseException :: BaseException
```

Constructs BaseException from required parameters

#### `newBaseException'`

``` purescript
newBaseException' :: ({ "Code" :: NullOrUndefined (ErrorCode), "Message" :: NullOrUndefined (ErrorMessage) } -> { "Code" :: NullOrUndefined (ErrorCode), "Message" :: NullOrUndefined (ErrorMessage) }) -> BaseException
```

Constructs BaseException's fields from required parameters

#### `CreateDomainRequest`

``` purescript
newtype CreateDomainRequest
  = CreateDomainRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype CreateDomainRequest _
Generic CreateDomainRequest _
Show CreateDomainRequest
Decode CreateDomainRequest
Encode CreateDomainRequest
```

#### `newCreateDomainRequest`

``` purescript
newCreateDomainRequest :: DomainName -> CreateDomainRequest
```

Constructs CreateDomainRequest from required parameters

#### `newCreateDomainRequest'`

``` purescript
newCreateDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> CreateDomainRequest
```

Constructs CreateDomainRequest's fields from required parameters

#### `CreateDomainResponse`

``` purescript
newtype CreateDomainResponse
  = CreateDomainResponse { "DomainStatus" :: NullOrUndefined (DomainStatus) }
```

<p>A response message that contains the status of a newly created domain.</p>

##### Instances
``` purescript
Newtype CreateDomainResponse _
Generic CreateDomainResponse _
Show CreateDomainResponse
Decode CreateDomainResponse
Encode CreateDomainResponse
```

#### `newCreateDomainResponse`

``` purescript
newCreateDomainResponse :: CreateDomainResponse
```

Constructs CreateDomainResponse from required parameters

#### `newCreateDomainResponse'`

``` purescript
newCreateDomainResponse' :: ({ "DomainStatus" :: NullOrUndefined (DomainStatus) } -> { "DomainStatus" :: NullOrUndefined (DomainStatus) }) -> CreateDomainResponse
```

Constructs CreateDomainResponse's fields from required parameters

#### `DefaultSearchFieldStatus`

``` purescript
newtype DefaultSearchFieldStatus
  = DefaultSearchFieldStatus { "Options" :: FieldName, "Status" :: OptionStatus }
```

<p>The value of the <code>DefaultSearchField</code> configured for this search domain and its current status.</p>

##### Instances
``` purescript
Newtype DefaultSearchFieldStatus _
Generic DefaultSearchFieldStatus _
Show DefaultSearchFieldStatus
Decode DefaultSearchFieldStatus
Encode DefaultSearchFieldStatus
```

#### `newDefaultSearchFieldStatus`

``` purescript
newDefaultSearchFieldStatus :: FieldName -> OptionStatus -> DefaultSearchFieldStatus
```

Constructs DefaultSearchFieldStatus from required parameters

#### `newDefaultSearchFieldStatus'`

``` purescript
newDefaultSearchFieldStatus' :: FieldName -> OptionStatus -> ({ "Options" :: FieldName, "Status" :: OptionStatus } -> { "Options" :: FieldName, "Status" :: OptionStatus }) -> DefaultSearchFieldStatus
```

Constructs DefaultSearchFieldStatus's fields from required parameters

#### `DefineIndexFieldRequest`

``` purescript
newtype DefineIndexFieldRequest
  = DefineIndexFieldRequest { "DomainName" :: DomainName, "IndexField" :: IndexField }
```

##### Instances
``` purescript
Newtype DefineIndexFieldRequest _
Generic DefineIndexFieldRequest _
Show DefineIndexFieldRequest
Decode DefineIndexFieldRequest
Encode DefineIndexFieldRequest
```

#### `newDefineIndexFieldRequest`

``` purescript
newDefineIndexFieldRequest :: DomainName -> IndexField -> DefineIndexFieldRequest
```

Constructs DefineIndexFieldRequest from required parameters

#### `newDefineIndexFieldRequest'`

``` purescript
newDefineIndexFieldRequest' :: DomainName -> IndexField -> ({ "DomainName" :: DomainName, "IndexField" :: IndexField } -> { "DomainName" :: DomainName, "IndexField" :: IndexField }) -> DefineIndexFieldRequest
```

Constructs DefineIndexFieldRequest's fields from required parameters

#### `DefineIndexFieldResponse`

``` purescript
newtype DefineIndexFieldResponse
  = DefineIndexFieldResponse { "IndexField" :: IndexFieldStatus }
```

<p>A response message that contains the status of an updated index field.</p>

##### Instances
``` purescript
Newtype DefineIndexFieldResponse _
Generic DefineIndexFieldResponse _
Show DefineIndexFieldResponse
Decode DefineIndexFieldResponse
Encode DefineIndexFieldResponse
```

#### `newDefineIndexFieldResponse`

``` purescript
newDefineIndexFieldResponse :: IndexFieldStatus -> DefineIndexFieldResponse
```

Constructs DefineIndexFieldResponse from required parameters

#### `newDefineIndexFieldResponse'`

``` purescript
newDefineIndexFieldResponse' :: IndexFieldStatus -> ({ "IndexField" :: IndexFieldStatus } -> { "IndexField" :: IndexFieldStatus }) -> DefineIndexFieldResponse
```

Constructs DefineIndexFieldResponse's fields from required parameters

#### `DefineRankExpressionRequest`

``` purescript
newtype DefineRankExpressionRequest
  = DefineRankExpressionRequest { "DomainName" :: DomainName, "RankExpression" :: NamedRankExpression }
```

##### Instances
``` purescript
Newtype DefineRankExpressionRequest _
Generic DefineRankExpressionRequest _
Show DefineRankExpressionRequest
Decode DefineRankExpressionRequest
Encode DefineRankExpressionRequest
```

#### `newDefineRankExpressionRequest`

``` purescript
newDefineRankExpressionRequest :: DomainName -> NamedRankExpression -> DefineRankExpressionRequest
```

Constructs DefineRankExpressionRequest from required parameters

#### `newDefineRankExpressionRequest'`

``` purescript
newDefineRankExpressionRequest' :: DomainName -> NamedRankExpression -> ({ "DomainName" :: DomainName, "RankExpression" :: NamedRankExpression } -> { "DomainName" :: DomainName, "RankExpression" :: NamedRankExpression }) -> DefineRankExpressionRequest
```

Constructs DefineRankExpressionRequest's fields from required parameters

#### `DefineRankExpressionResponse`

``` purescript
newtype DefineRankExpressionResponse
  = DefineRankExpressionResponse { "RankExpression" :: RankExpressionStatus }
```

<p>A response message that contains the status of an updated <code>RankExpression</code>.</p>

##### Instances
``` purescript
Newtype DefineRankExpressionResponse _
Generic DefineRankExpressionResponse _
Show DefineRankExpressionResponse
Decode DefineRankExpressionResponse
Encode DefineRankExpressionResponse
```

#### `newDefineRankExpressionResponse`

``` purescript
newDefineRankExpressionResponse :: RankExpressionStatus -> DefineRankExpressionResponse
```

Constructs DefineRankExpressionResponse from required parameters

#### `newDefineRankExpressionResponse'`

``` purescript
newDefineRankExpressionResponse' :: RankExpressionStatus -> ({ "RankExpression" :: RankExpressionStatus } -> { "RankExpression" :: RankExpressionStatus }) -> DefineRankExpressionResponse
```

Constructs DefineRankExpressionResponse's fields from required parameters

#### `DeleteDomainRequest`

``` purescript
newtype DeleteDomainRequest
  = DeleteDomainRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DeleteDomainRequest _
Generic DeleteDomainRequest _
Show DeleteDomainRequest
Decode DeleteDomainRequest
Encode DeleteDomainRequest
```

#### `newDeleteDomainRequest`

``` purescript
newDeleteDomainRequest :: DomainName -> DeleteDomainRequest
```

Constructs DeleteDomainRequest from required parameters

#### `newDeleteDomainRequest'`

``` purescript
newDeleteDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DeleteDomainRequest
```

Constructs DeleteDomainRequest's fields from required parameters

#### `DeleteDomainResponse`

``` purescript
newtype DeleteDomainResponse
  = DeleteDomainResponse { "DomainStatus" :: NullOrUndefined (DomainStatus) }
```

<p>A response message that contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>

##### Instances
``` purescript
Newtype DeleteDomainResponse _
Generic DeleteDomainResponse _
Show DeleteDomainResponse
Decode DeleteDomainResponse
Encode DeleteDomainResponse
```

#### `newDeleteDomainResponse`

``` purescript
newDeleteDomainResponse :: DeleteDomainResponse
```

Constructs DeleteDomainResponse from required parameters

#### `newDeleteDomainResponse'`

``` purescript
newDeleteDomainResponse' :: ({ "DomainStatus" :: NullOrUndefined (DomainStatus) } -> { "DomainStatus" :: NullOrUndefined (DomainStatus) }) -> DeleteDomainResponse
```

Constructs DeleteDomainResponse's fields from required parameters

#### `DeleteIndexFieldRequest`

``` purescript
newtype DeleteIndexFieldRequest
  = DeleteIndexFieldRequest { "DomainName" :: DomainName, "IndexFieldName" :: FieldName }
```

##### Instances
``` purescript
Newtype DeleteIndexFieldRequest _
Generic DeleteIndexFieldRequest _
Show DeleteIndexFieldRequest
Decode DeleteIndexFieldRequest
Encode DeleteIndexFieldRequest
```

#### `newDeleteIndexFieldRequest`

``` purescript
newDeleteIndexFieldRequest :: DomainName -> FieldName -> DeleteIndexFieldRequest
```

Constructs DeleteIndexFieldRequest from required parameters

#### `newDeleteIndexFieldRequest'`

``` purescript
newDeleteIndexFieldRequest' :: DomainName -> FieldName -> ({ "DomainName" :: DomainName, "IndexFieldName" :: FieldName } -> { "DomainName" :: DomainName, "IndexFieldName" :: FieldName }) -> DeleteIndexFieldRequest
```

Constructs DeleteIndexFieldRequest's fields from required parameters

#### `DeleteIndexFieldResponse`

``` purescript
newtype DeleteIndexFieldResponse
  = DeleteIndexFieldResponse { "IndexField" :: IndexFieldStatus }
```

<p>A response message that contains the status of a deleted index field.</p>

##### Instances
``` purescript
Newtype DeleteIndexFieldResponse _
Generic DeleteIndexFieldResponse _
Show DeleteIndexFieldResponse
Decode DeleteIndexFieldResponse
Encode DeleteIndexFieldResponse
```

#### `newDeleteIndexFieldResponse`

``` purescript
newDeleteIndexFieldResponse :: IndexFieldStatus -> DeleteIndexFieldResponse
```

Constructs DeleteIndexFieldResponse from required parameters

#### `newDeleteIndexFieldResponse'`

``` purescript
newDeleteIndexFieldResponse' :: IndexFieldStatus -> ({ "IndexField" :: IndexFieldStatus } -> { "IndexField" :: IndexFieldStatus }) -> DeleteIndexFieldResponse
```

Constructs DeleteIndexFieldResponse's fields from required parameters

#### `DeleteRankExpressionRequest`

``` purescript
newtype DeleteRankExpressionRequest
  = DeleteRankExpressionRequest { "DomainName" :: DomainName, "RankName" :: FieldName }
```

##### Instances
``` purescript
Newtype DeleteRankExpressionRequest _
Generic DeleteRankExpressionRequest _
Show DeleteRankExpressionRequest
Decode DeleteRankExpressionRequest
Encode DeleteRankExpressionRequest
```

#### `newDeleteRankExpressionRequest`

``` purescript
newDeleteRankExpressionRequest :: DomainName -> FieldName -> DeleteRankExpressionRequest
```

Constructs DeleteRankExpressionRequest from required parameters

#### `newDeleteRankExpressionRequest'`

``` purescript
newDeleteRankExpressionRequest' :: DomainName -> FieldName -> ({ "DomainName" :: DomainName, "RankName" :: FieldName } -> { "DomainName" :: DomainName, "RankName" :: FieldName }) -> DeleteRankExpressionRequest
```

Constructs DeleteRankExpressionRequest's fields from required parameters

#### `DeleteRankExpressionResponse`

``` purescript
newtype DeleteRankExpressionResponse
  = DeleteRankExpressionResponse { "RankExpression" :: RankExpressionStatus }
```

<p>A response message that contains the status of a deleted <code>RankExpression</code>.</p>

##### Instances
``` purescript
Newtype DeleteRankExpressionResponse _
Generic DeleteRankExpressionResponse _
Show DeleteRankExpressionResponse
Decode DeleteRankExpressionResponse
Encode DeleteRankExpressionResponse
```

#### `newDeleteRankExpressionResponse`

``` purescript
newDeleteRankExpressionResponse :: RankExpressionStatus -> DeleteRankExpressionResponse
```

Constructs DeleteRankExpressionResponse from required parameters

#### `newDeleteRankExpressionResponse'`

``` purescript
newDeleteRankExpressionResponse' :: RankExpressionStatus -> ({ "RankExpression" :: RankExpressionStatus } -> { "RankExpression" :: RankExpressionStatus }) -> DeleteRankExpressionResponse
```

Constructs DeleteRankExpressionResponse's fields from required parameters

#### `DescribeAvailabilityOptionsRequest`

``` purescript
newtype DescribeAvailabilityOptionsRequest
  = DescribeAvailabilityOptionsRequest { "DomainName" :: DomainName }
```

<p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>

##### Instances
``` purescript
Newtype DescribeAvailabilityOptionsRequest _
Generic DescribeAvailabilityOptionsRequest _
Show DescribeAvailabilityOptionsRequest
Decode DescribeAvailabilityOptionsRequest
Encode DescribeAvailabilityOptionsRequest
```

#### `newDescribeAvailabilityOptionsRequest`

``` purescript
newDescribeAvailabilityOptionsRequest :: DomainName -> DescribeAvailabilityOptionsRequest
```

Constructs DescribeAvailabilityOptionsRequest from required parameters

#### `newDescribeAvailabilityOptionsRequest'`

``` purescript
newDescribeAvailabilityOptionsRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeAvailabilityOptionsRequest
```

Constructs DescribeAvailabilityOptionsRequest's fields from required parameters

#### `DescribeAvailabilityOptionsResponse`

``` purescript
newtype DescribeAvailabilityOptionsResponse
  = DescribeAvailabilityOptionsResponse { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) }
```

<p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>

##### Instances
``` purescript
Newtype DescribeAvailabilityOptionsResponse _
Generic DescribeAvailabilityOptionsResponse _
Show DescribeAvailabilityOptionsResponse
Decode DescribeAvailabilityOptionsResponse
Encode DescribeAvailabilityOptionsResponse
```

#### `newDescribeAvailabilityOptionsResponse`

``` purescript
newDescribeAvailabilityOptionsResponse :: DescribeAvailabilityOptionsResponse
```

Constructs DescribeAvailabilityOptionsResponse from required parameters

#### `newDescribeAvailabilityOptionsResponse'`

``` purescript
newDescribeAvailabilityOptionsResponse' :: ({ "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) } -> { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) }) -> DescribeAvailabilityOptionsResponse
```

Constructs DescribeAvailabilityOptionsResponse's fields from required parameters

#### `DescribeDefaultSearchFieldRequest`

``` purescript
newtype DescribeDefaultSearchFieldRequest
  = DescribeDefaultSearchFieldRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DescribeDefaultSearchFieldRequest _
Generic DescribeDefaultSearchFieldRequest _
Show DescribeDefaultSearchFieldRequest
Decode DescribeDefaultSearchFieldRequest
Encode DescribeDefaultSearchFieldRequest
```

#### `newDescribeDefaultSearchFieldRequest`

``` purescript
newDescribeDefaultSearchFieldRequest :: DomainName -> DescribeDefaultSearchFieldRequest
```

Constructs DescribeDefaultSearchFieldRequest from required parameters

#### `newDescribeDefaultSearchFieldRequest'`

``` purescript
newDescribeDefaultSearchFieldRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeDefaultSearchFieldRequest
```

Constructs DescribeDefaultSearchFieldRequest's fields from required parameters

#### `DescribeDefaultSearchFieldResponse`

``` purescript
newtype DescribeDefaultSearchFieldResponse
  = DescribeDefaultSearchFieldResponse { "DefaultSearchField" :: DefaultSearchFieldStatus }
```

<p>A response message that contains the default search field for a search domain.</p>

##### Instances
``` purescript
Newtype DescribeDefaultSearchFieldResponse _
Generic DescribeDefaultSearchFieldResponse _
Show DescribeDefaultSearchFieldResponse
Decode DescribeDefaultSearchFieldResponse
Encode DescribeDefaultSearchFieldResponse
```

#### `newDescribeDefaultSearchFieldResponse`

``` purescript
newDescribeDefaultSearchFieldResponse :: DefaultSearchFieldStatus -> DescribeDefaultSearchFieldResponse
```

Constructs DescribeDefaultSearchFieldResponse from required parameters

#### `newDescribeDefaultSearchFieldResponse'`

``` purescript
newDescribeDefaultSearchFieldResponse' :: DefaultSearchFieldStatus -> ({ "DefaultSearchField" :: DefaultSearchFieldStatus } -> { "DefaultSearchField" :: DefaultSearchFieldStatus }) -> DescribeDefaultSearchFieldResponse
```

Constructs DescribeDefaultSearchFieldResponse's fields from required parameters

#### `DescribeDomainsRequest`

``` purescript
newtype DescribeDomainsRequest
  = DescribeDomainsRequest { "DomainNames" :: NullOrUndefined (DomainNameList) }
```

##### Instances
``` purescript
Newtype DescribeDomainsRequest _
Generic DescribeDomainsRequest _
Show DescribeDomainsRequest
Decode DescribeDomainsRequest
Encode DescribeDomainsRequest
```

#### `newDescribeDomainsRequest`

``` purescript
newDescribeDomainsRequest :: DescribeDomainsRequest
```

Constructs DescribeDomainsRequest from required parameters

#### `newDescribeDomainsRequest'`

``` purescript
newDescribeDomainsRequest' :: ({ "DomainNames" :: NullOrUndefined (DomainNameList) } -> { "DomainNames" :: NullOrUndefined (DomainNameList) }) -> DescribeDomainsRequest
```

Constructs DescribeDomainsRequest's fields from required parameters

#### `DescribeDomainsResponse`

``` purescript
newtype DescribeDomainsResponse
  = DescribeDomainsResponse { "DomainStatusList" :: DomainStatusList }
```

<p>A response message that contains the status of one or more domains.</p>

##### Instances
``` purescript
Newtype DescribeDomainsResponse _
Generic DescribeDomainsResponse _
Show DescribeDomainsResponse
Decode DescribeDomainsResponse
Encode DescribeDomainsResponse
```

#### `newDescribeDomainsResponse`

``` purescript
newDescribeDomainsResponse :: DomainStatusList -> DescribeDomainsResponse
```

Constructs DescribeDomainsResponse from required parameters

#### `newDescribeDomainsResponse'`

``` purescript
newDescribeDomainsResponse' :: DomainStatusList -> ({ "DomainStatusList" :: DomainStatusList } -> { "DomainStatusList" :: DomainStatusList }) -> DescribeDomainsResponse
```

Constructs DescribeDomainsResponse's fields from required parameters

#### `DescribeIndexFieldsRequest`

``` purescript
newtype DescribeIndexFieldsRequest
  = DescribeIndexFieldsRequest { "DomainName" :: DomainName, "FieldNames" :: NullOrUndefined (FieldNameList) }
```

##### Instances
``` purescript
Newtype DescribeIndexFieldsRequest _
Generic DescribeIndexFieldsRequest _
Show DescribeIndexFieldsRequest
Decode DescribeIndexFieldsRequest
Encode DescribeIndexFieldsRequest
```

#### `newDescribeIndexFieldsRequest`

``` purescript
newDescribeIndexFieldsRequest :: DomainName -> DescribeIndexFieldsRequest
```

Constructs DescribeIndexFieldsRequest from required parameters

#### `newDescribeIndexFieldsRequest'`

``` purescript
newDescribeIndexFieldsRequest' :: DomainName -> ({ "DomainName" :: DomainName, "FieldNames" :: NullOrUndefined (FieldNameList) } -> { "DomainName" :: DomainName, "FieldNames" :: NullOrUndefined (FieldNameList) }) -> DescribeIndexFieldsRequest
```

Constructs DescribeIndexFieldsRequest's fields from required parameters

#### `DescribeIndexFieldsResponse`

``` purescript
newtype DescribeIndexFieldsResponse
  = DescribeIndexFieldsResponse { "IndexFields" :: IndexFieldStatusList }
```

<p>A response message that contains the index fields for a search domain.</p>

##### Instances
``` purescript
Newtype DescribeIndexFieldsResponse _
Generic DescribeIndexFieldsResponse _
Show DescribeIndexFieldsResponse
Decode DescribeIndexFieldsResponse
Encode DescribeIndexFieldsResponse
```

#### `newDescribeIndexFieldsResponse`

``` purescript
newDescribeIndexFieldsResponse :: IndexFieldStatusList -> DescribeIndexFieldsResponse
```

Constructs DescribeIndexFieldsResponse from required parameters

#### `newDescribeIndexFieldsResponse'`

``` purescript
newDescribeIndexFieldsResponse' :: IndexFieldStatusList -> ({ "IndexFields" :: IndexFieldStatusList } -> { "IndexFields" :: IndexFieldStatusList }) -> DescribeIndexFieldsResponse
```

Constructs DescribeIndexFieldsResponse's fields from required parameters

#### `DescribeRankExpressionsRequest`

``` purescript
newtype DescribeRankExpressionsRequest
  = DescribeRankExpressionsRequest { "DomainName" :: DomainName, "RankNames" :: NullOrUndefined (FieldNameList) }
```

##### Instances
``` purescript
Newtype DescribeRankExpressionsRequest _
Generic DescribeRankExpressionsRequest _
Show DescribeRankExpressionsRequest
Decode DescribeRankExpressionsRequest
Encode DescribeRankExpressionsRequest
```

#### `newDescribeRankExpressionsRequest`

``` purescript
newDescribeRankExpressionsRequest :: DomainName -> DescribeRankExpressionsRequest
```

Constructs DescribeRankExpressionsRequest from required parameters

#### `newDescribeRankExpressionsRequest'`

``` purescript
newDescribeRankExpressionsRequest' :: DomainName -> ({ "DomainName" :: DomainName, "RankNames" :: NullOrUndefined (FieldNameList) } -> { "DomainName" :: DomainName, "RankNames" :: NullOrUndefined (FieldNameList) }) -> DescribeRankExpressionsRequest
```

Constructs DescribeRankExpressionsRequest's fields from required parameters

#### `DescribeRankExpressionsResponse`

``` purescript
newtype DescribeRankExpressionsResponse
  = DescribeRankExpressionsResponse { "RankExpressions" :: RankExpressionStatusList }
```

<p>A response message that contains the rank expressions for a search domain.</p>

##### Instances
``` purescript
Newtype DescribeRankExpressionsResponse _
Generic DescribeRankExpressionsResponse _
Show DescribeRankExpressionsResponse
Decode DescribeRankExpressionsResponse
Encode DescribeRankExpressionsResponse
```

#### `newDescribeRankExpressionsResponse`

``` purescript
newDescribeRankExpressionsResponse :: RankExpressionStatusList -> DescribeRankExpressionsResponse
```

Constructs DescribeRankExpressionsResponse from required parameters

#### `newDescribeRankExpressionsResponse'`

``` purescript
newDescribeRankExpressionsResponse' :: RankExpressionStatusList -> ({ "RankExpressions" :: RankExpressionStatusList } -> { "RankExpressions" :: RankExpressionStatusList }) -> DescribeRankExpressionsResponse
```

Constructs DescribeRankExpressionsResponse's fields from required parameters

#### `DescribeServiceAccessPoliciesRequest`

``` purescript
newtype DescribeServiceAccessPoliciesRequest
  = DescribeServiceAccessPoliciesRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DescribeServiceAccessPoliciesRequest _
Generic DescribeServiceAccessPoliciesRequest _
Show DescribeServiceAccessPoliciesRequest
Decode DescribeServiceAccessPoliciesRequest
Encode DescribeServiceAccessPoliciesRequest
```

#### `newDescribeServiceAccessPoliciesRequest`

``` purescript
newDescribeServiceAccessPoliciesRequest :: DomainName -> DescribeServiceAccessPoliciesRequest
```

Constructs DescribeServiceAccessPoliciesRequest from required parameters

#### `newDescribeServiceAccessPoliciesRequest'`

``` purescript
newDescribeServiceAccessPoliciesRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeServiceAccessPoliciesRequest
```

Constructs DescribeServiceAccessPoliciesRequest's fields from required parameters

#### `DescribeServiceAccessPoliciesResponse`

``` purescript
newtype DescribeServiceAccessPoliciesResponse
  = DescribeServiceAccessPoliciesResponse { "AccessPolicies" :: AccessPoliciesStatus }
```

<p>A response message that contains the access policies for a domain.</p>

##### Instances
``` purescript
Newtype DescribeServiceAccessPoliciesResponse _
Generic DescribeServiceAccessPoliciesResponse _
Show DescribeServiceAccessPoliciesResponse
Decode DescribeServiceAccessPoliciesResponse
Encode DescribeServiceAccessPoliciesResponse
```

#### `newDescribeServiceAccessPoliciesResponse`

``` purescript
newDescribeServiceAccessPoliciesResponse :: AccessPoliciesStatus -> DescribeServiceAccessPoliciesResponse
```

Constructs DescribeServiceAccessPoliciesResponse from required parameters

#### `newDescribeServiceAccessPoliciesResponse'`

``` purescript
newDescribeServiceAccessPoliciesResponse' :: AccessPoliciesStatus -> ({ "AccessPolicies" :: AccessPoliciesStatus } -> { "AccessPolicies" :: AccessPoliciesStatus }) -> DescribeServiceAccessPoliciesResponse
```

Constructs DescribeServiceAccessPoliciesResponse's fields from required parameters

#### `DescribeStemmingOptionsRequest`

``` purescript
newtype DescribeStemmingOptionsRequest
  = DescribeStemmingOptionsRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DescribeStemmingOptionsRequest _
Generic DescribeStemmingOptionsRequest _
Show DescribeStemmingOptionsRequest
Decode DescribeStemmingOptionsRequest
Encode DescribeStemmingOptionsRequest
```

#### `newDescribeStemmingOptionsRequest`

``` purescript
newDescribeStemmingOptionsRequest :: DomainName -> DescribeStemmingOptionsRequest
```

Constructs DescribeStemmingOptionsRequest from required parameters

#### `newDescribeStemmingOptionsRequest'`

``` purescript
newDescribeStemmingOptionsRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeStemmingOptionsRequest
```

Constructs DescribeStemmingOptionsRequest's fields from required parameters

#### `DescribeStemmingOptionsResponse`

``` purescript
newtype DescribeStemmingOptionsResponse
  = DescribeStemmingOptionsResponse { "Stems" :: StemmingOptionsStatus }
```

<p>A response message that contains the stemming options for a search domain.</p>

##### Instances
``` purescript
Newtype DescribeStemmingOptionsResponse _
Generic DescribeStemmingOptionsResponse _
Show DescribeStemmingOptionsResponse
Decode DescribeStemmingOptionsResponse
Encode DescribeStemmingOptionsResponse
```

#### `newDescribeStemmingOptionsResponse`

``` purescript
newDescribeStemmingOptionsResponse :: StemmingOptionsStatus -> DescribeStemmingOptionsResponse
```

Constructs DescribeStemmingOptionsResponse from required parameters

#### `newDescribeStemmingOptionsResponse'`

``` purescript
newDescribeStemmingOptionsResponse' :: StemmingOptionsStatus -> ({ "Stems" :: StemmingOptionsStatus } -> { "Stems" :: StemmingOptionsStatus }) -> DescribeStemmingOptionsResponse
```

Constructs DescribeStemmingOptionsResponse's fields from required parameters

#### `DescribeStopwordOptionsRequest`

``` purescript
newtype DescribeStopwordOptionsRequest
  = DescribeStopwordOptionsRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DescribeStopwordOptionsRequest _
Generic DescribeStopwordOptionsRequest _
Show DescribeStopwordOptionsRequest
Decode DescribeStopwordOptionsRequest
Encode DescribeStopwordOptionsRequest
```

#### `newDescribeStopwordOptionsRequest`

``` purescript
newDescribeStopwordOptionsRequest :: DomainName -> DescribeStopwordOptionsRequest
```

Constructs DescribeStopwordOptionsRequest from required parameters

#### `newDescribeStopwordOptionsRequest'`

``` purescript
newDescribeStopwordOptionsRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeStopwordOptionsRequest
```

Constructs DescribeStopwordOptionsRequest's fields from required parameters

#### `DescribeStopwordOptionsResponse`

``` purescript
newtype DescribeStopwordOptionsResponse
  = DescribeStopwordOptionsResponse { "Stopwords" :: StopwordOptionsStatus }
```

<p>A response message that contains the stopword options for a search domain.</p>

##### Instances
``` purescript
Newtype DescribeStopwordOptionsResponse _
Generic DescribeStopwordOptionsResponse _
Show DescribeStopwordOptionsResponse
Decode DescribeStopwordOptionsResponse
Encode DescribeStopwordOptionsResponse
```

#### `newDescribeStopwordOptionsResponse`

``` purescript
newDescribeStopwordOptionsResponse :: StopwordOptionsStatus -> DescribeStopwordOptionsResponse
```

Constructs DescribeStopwordOptionsResponse from required parameters

#### `newDescribeStopwordOptionsResponse'`

``` purescript
newDescribeStopwordOptionsResponse' :: StopwordOptionsStatus -> ({ "Stopwords" :: StopwordOptionsStatus } -> { "Stopwords" :: StopwordOptionsStatus }) -> DescribeStopwordOptionsResponse
```

Constructs DescribeStopwordOptionsResponse's fields from required parameters

#### `DescribeSynonymOptionsRequest`

``` purescript
newtype DescribeSynonymOptionsRequest
  = DescribeSynonymOptionsRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DescribeSynonymOptionsRequest _
Generic DescribeSynonymOptionsRequest _
Show DescribeSynonymOptionsRequest
Decode DescribeSynonymOptionsRequest
Encode DescribeSynonymOptionsRequest
```

#### `newDescribeSynonymOptionsRequest`

``` purescript
newDescribeSynonymOptionsRequest :: DomainName -> DescribeSynonymOptionsRequest
```

Constructs DescribeSynonymOptionsRequest from required parameters

#### `newDescribeSynonymOptionsRequest'`

``` purescript
newDescribeSynonymOptionsRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeSynonymOptionsRequest
```

Constructs DescribeSynonymOptionsRequest's fields from required parameters

#### `DescribeSynonymOptionsResponse`

``` purescript
newtype DescribeSynonymOptionsResponse
  = DescribeSynonymOptionsResponse { "Synonyms" :: SynonymOptionsStatus }
```

<p>A response message that contains the synonym options for a search domain.</p>

##### Instances
``` purescript
Newtype DescribeSynonymOptionsResponse _
Generic DescribeSynonymOptionsResponse _
Show DescribeSynonymOptionsResponse
Decode DescribeSynonymOptionsResponse
Encode DescribeSynonymOptionsResponse
```

#### `newDescribeSynonymOptionsResponse`

``` purescript
newDescribeSynonymOptionsResponse :: SynonymOptionsStatus -> DescribeSynonymOptionsResponse
```

Constructs DescribeSynonymOptionsResponse from required parameters

#### `newDescribeSynonymOptionsResponse'`

``` purescript
newDescribeSynonymOptionsResponse' :: SynonymOptionsStatus -> ({ "Synonyms" :: SynonymOptionsStatus } -> { "Synonyms" :: SynonymOptionsStatus }) -> DescribeSynonymOptionsResponse
```

Constructs DescribeSynonymOptionsResponse's fields from required parameters

#### `DisabledOperationException`

``` purescript
newtype DisabledOperationException
  = DisabledOperationException NoArguments
```

<p>The request was rejected because it attempted an operation which is not enabled.</p>

##### Instances
``` purescript
Newtype DisabledOperationException _
Generic DisabledOperationException _
Show DisabledOperationException
Decode DisabledOperationException
Encode DisabledOperationException
```

#### `DocumentCount`

``` purescript
newtype DocumentCount
  = DocumentCount Number
```

##### Instances
``` purescript
Newtype DocumentCount _
Generic DocumentCount _
Show DocumentCount
Decode DocumentCount
Encode DocumentCount
```

#### `DomainId`

``` purescript
newtype DomainId
  = DomainId String
```

<p>An internally generated unique identifier for a domain.</p>

##### Instances
``` purescript
Newtype DomainId _
Generic DomainId _
Show DomainId
Decode DomainId
Encode DomainId
```

#### `DomainName`

``` purescript
newtype DomainName
  = DomainName String
```

<p>A string that represents the name of a domain. Domain names must be unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen). Uppercase letters and underscores are not allowed.</p>

##### Instances
``` purescript
Newtype DomainName _
Generic DomainName _
Show DomainName
Decode DomainName
Encode DomainName
```

#### `DomainNameList`

``` purescript
newtype DomainNameList
  = DomainNameList (Array DomainName)
```

<p>A list of domain names.</p>

##### Instances
``` purescript
Newtype DomainNameList _
Generic DomainNameList _
Show DomainNameList
Decode DomainNameList
Encode DomainNameList
```

#### `DomainStatus`

``` purescript
newtype DomainStatus
  = DomainStatus { "DomainId" :: DomainId, "DomainName" :: DomainName, "Created" :: NullOrUndefined (Boolean), "Deleted" :: NullOrUndefined (Boolean), "NumSearchableDocs" :: NullOrUndefined (DocumentCount), "DocService" :: NullOrUndefined (ServiceEndpoint), "SearchService" :: NullOrUndefined (ServiceEndpoint), "RequiresIndexDocuments" :: Boolean, "Processing" :: NullOrUndefined (Boolean), "SearchInstanceType" :: NullOrUndefined (SearchInstanceType), "SearchPartitionCount" :: NullOrUndefined (PartitionCount), "SearchInstanceCount" :: NullOrUndefined (InstanceCount) }
```

<p>The current status of the search domain.</p>

##### Instances
``` purescript
Newtype DomainStatus _
Generic DomainStatus _
Show DomainStatus
Decode DomainStatus
Encode DomainStatus
```

#### `newDomainStatus`

``` purescript
newDomainStatus :: DomainId -> DomainName -> Boolean -> DomainStatus
```

Constructs DomainStatus from required parameters

#### `newDomainStatus'`

``` purescript
newDomainStatus' :: DomainId -> DomainName -> Boolean -> ({ "DomainId" :: DomainId, "DomainName" :: DomainName, "Created" :: NullOrUndefined (Boolean), "Deleted" :: NullOrUndefined (Boolean), "NumSearchableDocs" :: NullOrUndefined (DocumentCount), "DocService" :: NullOrUndefined (ServiceEndpoint), "SearchService" :: NullOrUndefined (ServiceEndpoint), "RequiresIndexDocuments" :: Boolean, "Processing" :: NullOrUndefined (Boolean), "SearchInstanceType" :: NullOrUndefined (SearchInstanceType), "SearchPartitionCount" :: NullOrUndefined (PartitionCount), "SearchInstanceCount" :: NullOrUndefined (InstanceCount) } -> { "DomainId" :: DomainId, "DomainName" :: DomainName, "Created" :: NullOrUndefined (Boolean), "Deleted" :: NullOrUndefined (Boolean), "NumSearchableDocs" :: NullOrUndefined (DocumentCount), "DocService" :: NullOrUndefined (ServiceEndpoint), "SearchService" :: NullOrUndefined (ServiceEndpoint), "RequiresIndexDocuments" :: Boolean, "Processing" :: NullOrUndefined (Boolean), "SearchInstanceType" :: NullOrUndefined (SearchInstanceType), "SearchPartitionCount" :: NullOrUndefined (PartitionCount), "SearchInstanceCount" :: NullOrUndefined (InstanceCount) }) -> DomainStatus
```

Constructs DomainStatus's fields from required parameters

#### `DomainStatusList`

``` purescript
newtype DomainStatusList
  = DomainStatusList (Array DomainStatus)
```

<p>The current status of all of your search domains.</p>

##### Instances
``` purescript
Newtype DomainStatusList _
Generic DomainStatusList _
Show DomainStatusList
Decode DomainStatusList
Encode DomainStatusList
```

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode String
```

<p>A machine-parsable string error or warning code.</p>

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

<p>A human-readable string error or warning message.</p>

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FieldName`

``` purescript
newtype FieldName
  = FieldName String
```

<p>A string that represents the name of an index field. Field names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Uppercase letters and hyphens are not allowed. The names "body", "docid", and "text_relevance" are reserved and cannot be specified as field or rank expression names.</p>

##### Instances
``` purescript
Newtype FieldName _
Generic FieldName _
Show FieldName
Decode FieldName
Encode FieldName
```

#### `FieldNameList`

``` purescript
newtype FieldNameList
  = FieldNameList (Array FieldName)
```

##### Instances
``` purescript
Newtype FieldNameList _
Generic FieldNameList _
Show FieldNameList
Decode FieldNameList
Encode FieldNameList
```

#### `FieldValue`

``` purescript
newtype FieldValue
  = FieldValue String
```

<p>The value of a field or source document attribute.</p>

##### Instances
``` purescript
Newtype FieldValue _
Generic FieldValue _
Show FieldValue
Decode FieldValue
Encode FieldValue
```

#### `IndexDocumentsRequest`

``` purescript
newtype IndexDocumentsRequest
  = IndexDocumentsRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype IndexDocumentsRequest _
Generic IndexDocumentsRequest _
Show IndexDocumentsRequest
Decode IndexDocumentsRequest
Encode IndexDocumentsRequest
```

#### `newIndexDocumentsRequest`

``` purescript
newIndexDocumentsRequest :: DomainName -> IndexDocumentsRequest
```

Constructs IndexDocumentsRequest from required parameters

#### `newIndexDocumentsRequest'`

``` purescript
newIndexDocumentsRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> IndexDocumentsRequest
```

Constructs IndexDocumentsRequest's fields from required parameters

#### `IndexDocumentsResponse`

``` purescript
newtype IndexDocumentsResponse
  = IndexDocumentsResponse { "FieldNames" :: NullOrUndefined (FieldNameList) }
```

<p>The result of an <code>IndexDocuments</code> action.</p>

##### Instances
``` purescript
Newtype IndexDocumentsResponse _
Generic IndexDocumentsResponse _
Show IndexDocumentsResponse
Decode IndexDocumentsResponse
Encode IndexDocumentsResponse
```

#### `newIndexDocumentsResponse`

``` purescript
newIndexDocumentsResponse :: IndexDocumentsResponse
```

Constructs IndexDocumentsResponse from required parameters

#### `newIndexDocumentsResponse'`

``` purescript
newIndexDocumentsResponse' :: ({ "FieldNames" :: NullOrUndefined (FieldNameList) } -> { "FieldNames" :: NullOrUndefined (FieldNameList) }) -> IndexDocumentsResponse
```

Constructs IndexDocumentsResponse's fields from required parameters

#### `IndexField`

``` purescript
newtype IndexField
  = IndexField { "IndexFieldName" :: FieldName, "IndexFieldType" :: IndexFieldType, "UIntOptions" :: NullOrUndefined (UIntOptions), "LiteralOptions" :: NullOrUndefined (LiteralOptions), "TextOptions" :: NullOrUndefined (TextOptions), "SourceAttributes" :: NullOrUndefined (SourceAttributeList) }
```

<p>Defines a field in the index, including its name, type, and the source of its data. The <code>IndexFieldType</code> indicates which of the options will be present. It is invalid to specify options for a type other than the <code>IndexFieldType</code>.</p>

##### Instances
``` purescript
Newtype IndexField _
Generic IndexField _
Show IndexField
Decode IndexField
Encode IndexField
```

#### `newIndexField`

``` purescript
newIndexField :: FieldName -> IndexFieldType -> IndexField
```

Constructs IndexField from required parameters

#### `newIndexField'`

``` purescript
newIndexField' :: FieldName -> IndexFieldType -> ({ "IndexFieldName" :: FieldName, "IndexFieldType" :: IndexFieldType, "UIntOptions" :: NullOrUndefined (UIntOptions), "LiteralOptions" :: NullOrUndefined (LiteralOptions), "TextOptions" :: NullOrUndefined (TextOptions), "SourceAttributes" :: NullOrUndefined (SourceAttributeList) } -> { "IndexFieldName" :: FieldName, "IndexFieldType" :: IndexFieldType, "UIntOptions" :: NullOrUndefined (UIntOptions), "LiteralOptions" :: NullOrUndefined (LiteralOptions), "TextOptions" :: NullOrUndefined (TextOptions), "SourceAttributes" :: NullOrUndefined (SourceAttributeList) }) -> IndexField
```

Constructs IndexField's fields from required parameters

#### `IndexFieldStatus`

``` purescript
newtype IndexFieldStatus
  = IndexFieldStatus { "Options" :: IndexField, "Status" :: OptionStatus }
```

<p>The value of an <code>IndexField</code> and its current status.</p>

##### Instances
``` purescript
Newtype IndexFieldStatus _
Generic IndexFieldStatus _
Show IndexFieldStatus
Decode IndexFieldStatus
Encode IndexFieldStatus
```

#### `newIndexFieldStatus`

``` purescript
newIndexFieldStatus :: IndexField -> OptionStatus -> IndexFieldStatus
```

Constructs IndexFieldStatus from required parameters

#### `newIndexFieldStatus'`

``` purescript
newIndexFieldStatus' :: IndexField -> OptionStatus -> ({ "Options" :: IndexField, "Status" :: OptionStatus } -> { "Options" :: IndexField, "Status" :: OptionStatus }) -> IndexFieldStatus
```

Constructs IndexFieldStatus's fields from required parameters

#### `IndexFieldStatusList`

``` purescript
newtype IndexFieldStatusList
  = IndexFieldStatusList (Array IndexFieldStatus)
```

##### Instances
``` purescript
Newtype IndexFieldStatusList _
Generic IndexFieldStatusList _
Show IndexFieldStatusList
Decode IndexFieldStatusList
Encode IndexFieldStatusList
```

#### `IndexFieldType`

``` purescript
newtype IndexFieldType
  = IndexFieldType String
```

<p>The type of <code>IndexField</code>.</p>

##### Instances
``` purescript
Newtype IndexFieldType _
Generic IndexFieldType _
Show IndexFieldType
Decode IndexFieldType
Encode IndexFieldType
```

#### `InstanceCount`

``` purescript
newtype InstanceCount
  = InstanceCount Int
```

##### Instances
``` purescript
Newtype InstanceCount _
Generic InstanceCount _
Show InstanceCount
Decode InstanceCount
Encode InstanceCount
```

#### `InternalException`

``` purescript
newtype InternalException
  = InternalException NoArguments
```

<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href="http://status.aws.amazon.com/">Service Health Dashboard</a>.</p>

##### Instances
``` purescript
Newtype InternalException _
Generic InternalException _
Show InternalException
Decode InternalException
Encode InternalException
```

#### `InvalidTypeException`

``` purescript
newtype InvalidTypeException
  = InvalidTypeException NoArguments
```

<p>The request was rejected because it specified an invalid type definition.</p>

##### Instances
``` purescript
Newtype InvalidTypeException _
Generic InvalidTypeException _
Show InvalidTypeException
Decode InvalidTypeException
Encode InvalidTypeException
```

#### `Language`

``` purescript
newtype Language
  = Language String
```

<p>An <a href="http://tools.ietf.org/html/rfc4646">IETF RFC 4646</a> language code. Only the primary language is considered. English (en) is currently the only supported language.</p>

##### Instances
``` purescript
Newtype Language _
Generic Language _
Show Language
Decode Language
Encode Language
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p>The request was rejected because a resource limit has already been met.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `LiteralOptions`

``` purescript
newtype LiteralOptions
  = LiteralOptions { "DefaultValue" :: NullOrUndefined (FieldValue), "SearchEnabled" :: NullOrUndefined (Boolean), "FacetEnabled" :: NullOrUndefined (Boolean), "ResultEnabled" :: NullOrUndefined (Boolean) }
```

<p>Options that define a literal field in the search index.</p>

##### Instances
``` purescript
Newtype LiteralOptions _
Generic LiteralOptions _
Show LiteralOptions
Decode LiteralOptions
Encode LiteralOptions
```

#### `newLiteralOptions`

``` purescript
newLiteralOptions :: LiteralOptions
```

Constructs LiteralOptions from required parameters

#### `newLiteralOptions'`

``` purescript
newLiteralOptions' :: ({ "DefaultValue" :: NullOrUndefined (FieldValue), "SearchEnabled" :: NullOrUndefined (Boolean), "FacetEnabled" :: NullOrUndefined (Boolean), "ResultEnabled" :: NullOrUndefined (Boolean) } -> { "DefaultValue" :: NullOrUndefined (FieldValue), "SearchEnabled" :: NullOrUndefined (Boolean), "FacetEnabled" :: NullOrUndefined (Boolean), "ResultEnabled" :: NullOrUndefined (Boolean) }) -> LiteralOptions
```

Constructs LiteralOptions's fields from required parameters

#### `MultiAZ`

``` purescript
newtype MultiAZ
  = MultiAZ Boolean
```

##### Instances
``` purescript
Newtype MultiAZ _
Generic MultiAZ _
Show MultiAZ
Decode MultiAZ
Encode MultiAZ
```

#### `NamedRankExpression`

``` purescript
newtype NamedRankExpression
  = NamedRankExpression { "RankName" :: FieldName, "RankExpression" :: RankExpression }
```

<p>A named expression that can be evaluated at search time and used for ranking or thresholding in a search query. </p>

##### Instances
``` purescript
Newtype NamedRankExpression _
Generic NamedRankExpression _
Show NamedRankExpression
Decode NamedRankExpression
Encode NamedRankExpression
```

#### `newNamedRankExpression`

``` purescript
newNamedRankExpression :: RankExpression -> FieldName -> NamedRankExpression
```

Constructs NamedRankExpression from required parameters

#### `newNamedRankExpression'`

``` purescript
newNamedRankExpression' :: RankExpression -> FieldName -> ({ "RankName" :: FieldName, "RankExpression" :: RankExpression } -> { "RankName" :: FieldName, "RankExpression" :: RankExpression }) -> NamedRankExpression
```

Constructs NamedRankExpression's fields from required parameters

#### `OptionState`

``` purescript
newtype OptionState
  = OptionState String
```

<p>The state of processing a change to an option.</p>

##### Instances
``` purescript
Newtype OptionState _
Generic OptionState _
Show OptionState
Decode OptionState
Encode OptionState
```

#### `OptionStatus`

``` purescript
newtype OptionStatus
  = OptionStatus { "CreationDate" :: UpdateTimestamp, "UpdateDate" :: UpdateTimestamp, "UpdateVersion" :: NullOrUndefined (UIntValue), "State" :: OptionState, "PendingDeletion" :: NullOrUndefined (Boolean) }
```

<p>The status of an option, including when it was last updated and whether it is actively in use for searches.</p>

##### Instances
``` purescript
Newtype OptionStatus _
Generic OptionStatus _
Show OptionStatus
Decode OptionStatus
Encode OptionStatus
```

#### `newOptionStatus`

``` purescript
newOptionStatus :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> OptionStatus
```

Constructs OptionStatus from required parameters

#### `newOptionStatus'`

``` purescript
newOptionStatus' :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> ({ "CreationDate" :: UpdateTimestamp, "UpdateDate" :: UpdateTimestamp, "UpdateVersion" :: NullOrUndefined (UIntValue), "State" :: OptionState, "PendingDeletion" :: NullOrUndefined (Boolean) } -> { "CreationDate" :: UpdateTimestamp, "UpdateDate" :: UpdateTimestamp, "UpdateVersion" :: NullOrUndefined (UIntValue), "State" :: OptionState, "PendingDeletion" :: NullOrUndefined (Boolean) }) -> OptionStatus
```

Constructs OptionStatus's fields from required parameters

#### `PartitionCount`

``` purescript
newtype PartitionCount
  = PartitionCount Int
```

##### Instances
``` purescript
Newtype PartitionCount _
Generic PartitionCount _
Show PartitionCount
Decode PartitionCount
Encode PartitionCount
```

#### `PolicyDocument`

``` purescript
newtype PolicyDocument
  = PolicyDocument String
```

<p>An IAM access policy as described in <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?AccessPolicyLanguage.html" target="_blank">The Access Policy Language</a> in <i>Using AWS Identity and Access Management</i>. The maximum size of an access policy document is 100 KB.</p> <p>Example: <code>{"Statement": [{"Effect":"Allow", "Action": "*", "Resource": "arn:aws:cs:us-east-1:1234567890:search/movies", "Condition": { "IpAddress": { "aws:SourceIp": ["203.0.113.1/32"] } }}, {"Effect":"Allow", "Action": "*", "Resource": "arn:aws:cs:us-east-1:1234567890:documents/movies", "Condition": { "IpAddress": { "aws:SourceIp": ["203.0.113.1/32"] } }} ] }</code></p>

##### Instances
``` purescript
Newtype PolicyDocument _
Generic PolicyDocument _
Show PolicyDocument
Decode PolicyDocument
Encode PolicyDocument
```

#### `RankExpression`

``` purescript
newtype RankExpression
  = RankExpression String
```

<p>The current status of the rank expression.</p>

##### Instances
``` purescript
Newtype RankExpression _
Generic RankExpression _
Show RankExpression
Decode RankExpression
Encode RankExpression
```

#### `RankExpressionStatus`

``` purescript
newtype RankExpressionStatus
  = RankExpressionStatus { "Options" :: NamedRankExpression, "Status" :: OptionStatus }
```

<p>The value of a <code>RankExpression</code> and its current status.</p>

##### Instances
``` purescript
Newtype RankExpressionStatus _
Generic RankExpressionStatus _
Show RankExpressionStatus
Decode RankExpressionStatus
Encode RankExpressionStatus
```

#### `newRankExpressionStatus`

``` purescript
newRankExpressionStatus :: NamedRankExpression -> OptionStatus -> RankExpressionStatus
```

Constructs RankExpressionStatus from required parameters

#### `newRankExpressionStatus'`

``` purescript
newRankExpressionStatus' :: NamedRankExpression -> OptionStatus -> ({ "Options" :: NamedRankExpression, "Status" :: OptionStatus } -> { "Options" :: NamedRankExpression, "Status" :: OptionStatus }) -> RankExpressionStatus
```

Constructs RankExpressionStatus's fields from required parameters

#### `RankExpressionStatusList`

``` purescript
newtype RankExpressionStatusList
  = RankExpressionStatusList (Array RankExpressionStatus)
```

##### Instances
``` purescript
Newtype RankExpressionStatusList _
Generic RankExpressionStatusList _
Show RankExpressionStatusList
Decode RankExpressionStatusList
Encode RankExpressionStatusList
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException NoArguments
```

<p>The request was rejected because it attempted to reference a resource that does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `SearchInstanceType`

``` purescript
newtype SearchInstanceType
  = SearchInstanceType String
```

##### Instances
``` purescript
Newtype SearchInstanceType _
Generic SearchInstanceType _
Show SearchInstanceType
Decode SearchInstanceType
Encode SearchInstanceType
```

#### `ServiceEndpoint`

``` purescript
newtype ServiceEndpoint
  = ServiceEndpoint { "Arn" :: NullOrUndefined (Arn), "Endpoint" :: NullOrUndefined (ServiceUrl) }
```

<p>The endpoint to which service requests can be submitted, including the actual URL prefix for sending requests and the Amazon Resource Name (ARN) so the endpoint can be referenced in other API calls such as <a>UpdateServiceAccessPolicies</a>.</p>

##### Instances
``` purescript
Newtype ServiceEndpoint _
Generic ServiceEndpoint _
Show ServiceEndpoint
Decode ServiceEndpoint
Encode ServiceEndpoint
```

#### `newServiceEndpoint`

``` purescript
newServiceEndpoint :: ServiceEndpoint
```

Constructs ServiceEndpoint from required parameters

#### `newServiceEndpoint'`

``` purescript
newServiceEndpoint' :: ({ "Arn" :: NullOrUndefined (Arn), "Endpoint" :: NullOrUndefined (ServiceUrl) } -> { "Arn" :: NullOrUndefined (Arn), "Endpoint" :: NullOrUndefined (ServiceUrl) }) -> ServiceEndpoint
```

Constructs ServiceEndpoint's fields from required parameters

#### `ServiceUrl`

``` purescript
newtype ServiceUrl
  = ServiceUrl String
```

<p>The URL (including /version/pathPrefix) to which service requests can be submitted.</p>

##### Instances
``` purescript
Newtype ServiceUrl _
Generic ServiceUrl _
Show ServiceUrl
Decode ServiceUrl
Encode ServiceUrl
```

#### `SourceAttribute`

``` purescript
newtype SourceAttribute
  = SourceAttribute { "SourceDataFunction" :: SourceDataFunction, "SourceDataCopy" :: NullOrUndefined (SourceData), "SourceDataTrimTitle" :: NullOrUndefined (SourceDataTrimTitle), "SourceDataMap" :: NullOrUndefined (SourceDataMap) }
```

<p>Identifies the source data for an index field. An optional data transformation can be applied to the source data when populating the index field. By default, the value of the source attribute is copied to the index field.</p>

##### Instances
``` purescript
Newtype SourceAttribute _
Generic SourceAttribute _
Show SourceAttribute
Decode SourceAttribute
Encode SourceAttribute
```

#### `newSourceAttribute`

``` purescript
newSourceAttribute :: SourceDataFunction -> SourceAttribute
```

Constructs SourceAttribute from required parameters

#### `newSourceAttribute'`

``` purescript
newSourceAttribute' :: SourceDataFunction -> ({ "SourceDataFunction" :: SourceDataFunction, "SourceDataCopy" :: NullOrUndefined (SourceData), "SourceDataTrimTitle" :: NullOrUndefined (SourceDataTrimTitle), "SourceDataMap" :: NullOrUndefined (SourceDataMap) } -> { "SourceDataFunction" :: SourceDataFunction, "SourceDataCopy" :: NullOrUndefined (SourceData), "SourceDataTrimTitle" :: NullOrUndefined (SourceDataTrimTitle), "SourceDataMap" :: NullOrUndefined (SourceDataMap) }) -> SourceAttribute
```

Constructs SourceAttribute's fields from required parameters

#### `SourceAttributeList`

``` purescript
newtype SourceAttributeList
  = SourceAttributeList (Array SourceAttribute)
```

##### Instances
``` purescript
Newtype SourceAttributeList _
Generic SourceAttributeList _
Show SourceAttributeList
Decode SourceAttributeList
Encode SourceAttributeList
```

#### `SourceData`

``` purescript
newtype SourceData
  = SourceData { "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue) }
```

<p>The source attribute name and an optional default value to use if a document doesn't have an attribute of that name.</p>

##### Instances
``` purescript
Newtype SourceData _
Generic SourceData _
Show SourceData
Decode SourceData
Encode SourceData
```

#### `newSourceData`

``` purescript
newSourceData :: FieldName -> SourceData
```

Constructs SourceData from required parameters

#### `newSourceData'`

``` purescript
newSourceData' :: FieldName -> ({ "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue) } -> { "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue) }) -> SourceData
```

Constructs SourceData's fields from required parameters

#### `SourceDataFunction`

``` purescript
newtype SourceDataFunction
  = SourceDataFunction String
```

##### Instances
``` purescript
Newtype SourceDataFunction _
Generic SourceDataFunction _
Show SourceDataFunction
Decode SourceDataFunction
Encode SourceDataFunction
```

#### `SourceDataMap`

``` purescript
newtype SourceDataMap
  = SourceDataMap { "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue), "Cases" :: NullOrUndefined (StringCaseMap) }
```

<p>Specifies how to map source attribute values to custom values when populating an <code>IndexField</code>.</p>

##### Instances
``` purescript
Newtype SourceDataMap _
Generic SourceDataMap _
Show SourceDataMap
Decode SourceDataMap
Encode SourceDataMap
```

#### `newSourceDataMap`

``` purescript
newSourceDataMap :: FieldName -> SourceDataMap
```

Constructs SourceDataMap from required parameters

#### `newSourceDataMap'`

``` purescript
newSourceDataMap' :: FieldName -> ({ "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue), "Cases" :: NullOrUndefined (StringCaseMap) } -> { "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue), "Cases" :: NullOrUndefined (StringCaseMap) }) -> SourceDataMap
```

Constructs SourceDataMap's fields from required parameters

#### `SourceDataTrimTitle`

``` purescript
newtype SourceDataTrimTitle
  = SourceDataTrimTitle { "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue), "Separator" :: NullOrUndefined (String), "Language" :: NullOrUndefined (Language) }
```

<p>Specifies how to trim common words from the beginning of a field to enable title sorting by that field.</p>

##### Instances
``` purescript
Newtype SourceDataTrimTitle _
Generic SourceDataTrimTitle _
Show SourceDataTrimTitle
Decode SourceDataTrimTitle
Encode SourceDataTrimTitle
```

#### `newSourceDataTrimTitle`

``` purescript
newSourceDataTrimTitle :: FieldName -> SourceDataTrimTitle
```

Constructs SourceDataTrimTitle from required parameters

#### `newSourceDataTrimTitle'`

``` purescript
newSourceDataTrimTitle' :: FieldName -> ({ "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue), "Separator" :: NullOrUndefined (String), "Language" :: NullOrUndefined (Language) } -> { "SourceName" :: FieldName, "DefaultValue" :: NullOrUndefined (FieldValue), "Separator" :: NullOrUndefined (String), "Language" :: NullOrUndefined (Language) }) -> SourceDataTrimTitle
```

Constructs SourceDataTrimTitle's fields from required parameters

#### `StemmingOptionsStatus`

``` purescript
newtype StemmingOptionsStatus
  = StemmingOptionsStatus { "Options" :: StemsDocument, "Status" :: OptionStatus }
```

<p>The stemming options configured for this search domain and the current status of those options.</p>

##### Instances
``` purescript
Newtype StemmingOptionsStatus _
Generic StemmingOptionsStatus _
Show StemmingOptionsStatus
Decode StemmingOptionsStatus
Encode StemmingOptionsStatus
```

#### `newStemmingOptionsStatus`

``` purescript
newStemmingOptionsStatus :: StemsDocument -> OptionStatus -> StemmingOptionsStatus
```

Constructs StemmingOptionsStatus from required parameters

#### `newStemmingOptionsStatus'`

``` purescript
newStemmingOptionsStatus' :: StemsDocument -> OptionStatus -> ({ "Options" :: StemsDocument, "Status" :: OptionStatus } -> { "Options" :: StemsDocument, "Status" :: OptionStatus }) -> StemmingOptionsStatus
```

Constructs StemmingOptionsStatus's fields from required parameters

#### `StemsDocument`

``` purescript
newtype StemsDocument
  = StemsDocument String
```

<p>Maps terms to their stems, serialized as a JSON document. The document has a single object with one property "stems" whose value is an object mapping terms to their stems. The maximum size of a stemming document is 500 KB. Example: <code>{ "stems": {"people": "person", "walking": "walk"} }</code></p>

##### Instances
``` purescript
Newtype StemsDocument _
Generic StemsDocument _
Show StemsDocument
Decode StemsDocument
Encode StemsDocument
```

#### `StopwordOptionsStatus`

``` purescript
newtype StopwordOptionsStatus
  = StopwordOptionsStatus { "Options" :: StopwordsDocument, "Status" :: OptionStatus }
```

<p>The stopword options configured for this search domain and the current status of those options.</p>

##### Instances
``` purescript
Newtype StopwordOptionsStatus _
Generic StopwordOptionsStatus _
Show StopwordOptionsStatus
Decode StopwordOptionsStatus
Encode StopwordOptionsStatus
```

#### `newStopwordOptionsStatus`

``` purescript
newStopwordOptionsStatus :: StopwordsDocument -> OptionStatus -> StopwordOptionsStatus
```

Constructs StopwordOptionsStatus from required parameters

#### `newStopwordOptionsStatus'`

``` purescript
newStopwordOptionsStatus' :: StopwordsDocument -> OptionStatus -> ({ "Options" :: StopwordsDocument, "Status" :: OptionStatus } -> { "Options" :: StopwordsDocument, "Status" :: OptionStatus }) -> StopwordOptionsStatus
```

Constructs StopwordOptionsStatus's fields from required parameters

#### `StopwordsDocument`

``` purescript
newtype StopwordsDocument
  = StopwordsDocument String
```

<p>Lists stopwords serialized as a JSON document. The document has a single object with one property "stopwords" whose value is an array of strings. The maximum size of a stopwords document is 10 KB. Example: <code>{ "stopwords": ["a", "an", "the", "of"] }</code></p>

##### Instances
``` purescript
Newtype StopwordsDocument _
Generic StopwordsDocument _
Show StopwordsDocument
Decode StopwordsDocument
Encode StopwordsDocument
```

#### `StringCaseMap`

``` purescript
newtype StringCaseMap
  = StringCaseMap (StrMap FieldValue)
```

##### Instances
``` purescript
Newtype StringCaseMap _
Generic StringCaseMap _
Show StringCaseMap
Decode StringCaseMap
Encode StringCaseMap
```

#### `SynonymOptionsStatus`

``` purescript
newtype SynonymOptionsStatus
  = SynonymOptionsStatus { "Options" :: SynonymsDocument, "Status" :: OptionStatus }
```

<p>The synonym options configured for this search domain and the current status of those options.</p>

##### Instances
``` purescript
Newtype SynonymOptionsStatus _
Generic SynonymOptionsStatus _
Show SynonymOptionsStatus
Decode SynonymOptionsStatus
Encode SynonymOptionsStatus
```

#### `newSynonymOptionsStatus`

``` purescript
newSynonymOptionsStatus :: SynonymsDocument -> OptionStatus -> SynonymOptionsStatus
```

Constructs SynonymOptionsStatus from required parameters

#### `newSynonymOptionsStatus'`

``` purescript
newSynonymOptionsStatus' :: SynonymsDocument -> OptionStatus -> ({ "Options" :: SynonymsDocument, "Status" :: OptionStatus } -> { "Options" :: SynonymsDocument, "Status" :: OptionStatus }) -> SynonymOptionsStatus
```

Constructs SynonymOptionsStatus's fields from required parameters

#### `SynonymsDocument`

``` purescript
newtype SynonymsDocument
  = SynonymsDocument String
```

<p>Maps terms to their synonyms, serialized as a JSON document. The document has a single object with one property "synonyms" whose value is an object mapping terms to their synonyms. Each synonym is a simple string or an array of strings. The maximum size of a stopwords document is 100 KB. Example: <code>{ "synonyms": {"cat": ["feline", "kitten"], "puppy": "dog"} }</code></p>

##### Instances
``` purescript
Newtype SynonymsDocument _
Generic SynonymsDocument _
Show SynonymsDocument
Decode SynonymsDocument
Encode SynonymsDocument
```

#### `TextOptions`

``` purescript
newtype TextOptions
  = TextOptions { "DefaultValue" :: NullOrUndefined (FieldValue), "FacetEnabled" :: NullOrUndefined (Boolean), "ResultEnabled" :: NullOrUndefined (Boolean), "TextProcessor" :: NullOrUndefined (FieldName) }
```

<p>Options that define a text field in the search index.</p>

##### Instances
``` purescript
Newtype TextOptions _
Generic TextOptions _
Show TextOptions
Decode TextOptions
Encode TextOptions
```

#### `newTextOptions`

``` purescript
newTextOptions :: TextOptions
```

Constructs TextOptions from required parameters

#### `newTextOptions'`

``` purescript
newTextOptions' :: ({ "DefaultValue" :: NullOrUndefined (FieldValue), "FacetEnabled" :: NullOrUndefined (Boolean), "ResultEnabled" :: NullOrUndefined (Boolean), "TextProcessor" :: NullOrUndefined (FieldName) } -> { "DefaultValue" :: NullOrUndefined (FieldValue), "FacetEnabled" :: NullOrUndefined (Boolean), "ResultEnabled" :: NullOrUndefined (Boolean), "TextProcessor" :: NullOrUndefined (FieldName) }) -> TextOptions
```

Constructs TextOptions's fields from required parameters

#### `UIntOptions`

``` purescript
newtype UIntOptions
  = UIntOptions { "DefaultValue" :: NullOrUndefined (UIntValue) }
```

<p>Options that define a <code>uint</code> field in the search index.</p>

##### Instances
``` purescript
Newtype UIntOptions _
Generic UIntOptions _
Show UIntOptions
Decode UIntOptions
Encode UIntOptions
```

#### `newUIntOptions`

``` purescript
newUIntOptions :: UIntOptions
```

Constructs UIntOptions from required parameters

#### `newUIntOptions'`

``` purescript
newUIntOptions' :: ({ "DefaultValue" :: NullOrUndefined (UIntValue) } -> { "DefaultValue" :: NullOrUndefined (UIntValue) }) -> UIntOptions
```

Constructs UIntOptions's fields from required parameters

#### `UIntValue`

``` purescript
newtype UIntValue
  = UIntValue Int
```

##### Instances
``` purescript
Newtype UIntValue _
Generic UIntValue _
Show UIntValue
Decode UIntValue
Encode UIntValue
```

#### `UpdateAvailabilityOptionsRequest`

``` purescript
newtype UpdateAvailabilityOptionsRequest
  = UpdateAvailabilityOptionsRequest { "DomainName" :: DomainName, "MultiAZ" :: Boolean }
```

<p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>

##### Instances
``` purescript
Newtype UpdateAvailabilityOptionsRequest _
Generic UpdateAvailabilityOptionsRequest _
Show UpdateAvailabilityOptionsRequest
Decode UpdateAvailabilityOptionsRequest
Encode UpdateAvailabilityOptionsRequest
```

#### `newUpdateAvailabilityOptionsRequest`

``` purescript
newUpdateAvailabilityOptionsRequest :: DomainName -> Boolean -> UpdateAvailabilityOptionsRequest
```

Constructs UpdateAvailabilityOptionsRequest from required parameters

#### `newUpdateAvailabilityOptionsRequest'`

``` purescript
newUpdateAvailabilityOptionsRequest' :: DomainName -> Boolean -> ({ "DomainName" :: DomainName, "MultiAZ" :: Boolean } -> { "DomainName" :: DomainName, "MultiAZ" :: Boolean }) -> UpdateAvailabilityOptionsRequest
```

Constructs UpdateAvailabilityOptionsRequest's fields from required parameters

#### `UpdateAvailabilityOptionsResponse`

``` purescript
newtype UpdateAvailabilityOptionsResponse
  = UpdateAvailabilityOptionsResponse { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) }
```

<p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>

##### Instances
``` purescript
Newtype UpdateAvailabilityOptionsResponse _
Generic UpdateAvailabilityOptionsResponse _
Show UpdateAvailabilityOptionsResponse
Decode UpdateAvailabilityOptionsResponse
Encode UpdateAvailabilityOptionsResponse
```

#### `newUpdateAvailabilityOptionsResponse`

``` purescript
newUpdateAvailabilityOptionsResponse :: UpdateAvailabilityOptionsResponse
```

Constructs UpdateAvailabilityOptionsResponse from required parameters

#### `newUpdateAvailabilityOptionsResponse'`

``` purescript
newUpdateAvailabilityOptionsResponse' :: ({ "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) } -> { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) }) -> UpdateAvailabilityOptionsResponse
```

Constructs UpdateAvailabilityOptionsResponse's fields from required parameters

#### `UpdateDefaultSearchFieldRequest`

``` purescript
newtype UpdateDefaultSearchFieldRequest
  = UpdateDefaultSearchFieldRequest { "DomainName" :: DomainName, "DefaultSearchField" :: String }
```

##### Instances
``` purescript
Newtype UpdateDefaultSearchFieldRequest _
Generic UpdateDefaultSearchFieldRequest _
Show UpdateDefaultSearchFieldRequest
Decode UpdateDefaultSearchFieldRequest
Encode UpdateDefaultSearchFieldRequest
```

#### `newUpdateDefaultSearchFieldRequest`

``` purescript
newUpdateDefaultSearchFieldRequest :: String -> DomainName -> UpdateDefaultSearchFieldRequest
```

Constructs UpdateDefaultSearchFieldRequest from required parameters

#### `newUpdateDefaultSearchFieldRequest'`

``` purescript
newUpdateDefaultSearchFieldRequest' :: String -> DomainName -> ({ "DomainName" :: DomainName, "DefaultSearchField" :: String } -> { "DomainName" :: DomainName, "DefaultSearchField" :: String }) -> UpdateDefaultSearchFieldRequest
```

Constructs UpdateDefaultSearchFieldRequest's fields from required parameters

#### `UpdateDefaultSearchFieldResponse`

``` purescript
newtype UpdateDefaultSearchFieldResponse
  = UpdateDefaultSearchFieldResponse { "DefaultSearchField" :: DefaultSearchFieldStatus }
```

<p>A response message that contains the status of an updated default search field.</p>

##### Instances
``` purescript
Newtype UpdateDefaultSearchFieldResponse _
Generic UpdateDefaultSearchFieldResponse _
Show UpdateDefaultSearchFieldResponse
Decode UpdateDefaultSearchFieldResponse
Encode UpdateDefaultSearchFieldResponse
```

#### `newUpdateDefaultSearchFieldResponse`

``` purescript
newUpdateDefaultSearchFieldResponse :: DefaultSearchFieldStatus -> UpdateDefaultSearchFieldResponse
```

Constructs UpdateDefaultSearchFieldResponse from required parameters

#### `newUpdateDefaultSearchFieldResponse'`

``` purescript
newUpdateDefaultSearchFieldResponse' :: DefaultSearchFieldStatus -> ({ "DefaultSearchField" :: DefaultSearchFieldStatus } -> { "DefaultSearchField" :: DefaultSearchFieldStatus }) -> UpdateDefaultSearchFieldResponse
```

Constructs UpdateDefaultSearchFieldResponse's fields from required parameters

#### `UpdateServiceAccessPoliciesRequest`

``` purescript
newtype UpdateServiceAccessPoliciesRequest
  = UpdateServiceAccessPoliciesRequest { "DomainName" :: DomainName, "AccessPolicies" :: PolicyDocument }
```

##### Instances
``` purescript
Newtype UpdateServiceAccessPoliciesRequest _
Generic UpdateServiceAccessPoliciesRequest _
Show UpdateServiceAccessPoliciesRequest
Decode UpdateServiceAccessPoliciesRequest
Encode UpdateServiceAccessPoliciesRequest
```

#### `newUpdateServiceAccessPoliciesRequest`

``` purescript
newUpdateServiceAccessPoliciesRequest :: PolicyDocument -> DomainName -> UpdateServiceAccessPoliciesRequest
```

Constructs UpdateServiceAccessPoliciesRequest from required parameters

#### `newUpdateServiceAccessPoliciesRequest'`

``` purescript
newUpdateServiceAccessPoliciesRequest' :: PolicyDocument -> DomainName -> ({ "DomainName" :: DomainName, "AccessPolicies" :: PolicyDocument } -> { "DomainName" :: DomainName, "AccessPolicies" :: PolicyDocument }) -> UpdateServiceAccessPoliciesRequest
```

Constructs UpdateServiceAccessPoliciesRequest's fields from required parameters

#### `UpdateServiceAccessPoliciesResponse`

``` purescript
newtype UpdateServiceAccessPoliciesResponse
  = UpdateServiceAccessPoliciesResponse { "AccessPolicies" :: AccessPoliciesStatus }
```

<p>A response message that contains the status of updated access policies.</p>

##### Instances
``` purescript
Newtype UpdateServiceAccessPoliciesResponse _
Generic UpdateServiceAccessPoliciesResponse _
Show UpdateServiceAccessPoliciesResponse
Decode UpdateServiceAccessPoliciesResponse
Encode UpdateServiceAccessPoliciesResponse
```

#### `newUpdateServiceAccessPoliciesResponse`

``` purescript
newUpdateServiceAccessPoliciesResponse :: AccessPoliciesStatus -> UpdateServiceAccessPoliciesResponse
```

Constructs UpdateServiceAccessPoliciesResponse from required parameters

#### `newUpdateServiceAccessPoliciesResponse'`

``` purescript
newUpdateServiceAccessPoliciesResponse' :: AccessPoliciesStatus -> ({ "AccessPolicies" :: AccessPoliciesStatus } -> { "AccessPolicies" :: AccessPoliciesStatus }) -> UpdateServiceAccessPoliciesResponse
```

Constructs UpdateServiceAccessPoliciesResponse's fields from required parameters

#### `UpdateStemmingOptionsRequest`

``` purescript
newtype UpdateStemmingOptionsRequest
  = UpdateStemmingOptionsRequest { "DomainName" :: DomainName, "Stems" :: StemsDocument }
```

##### Instances
``` purescript
Newtype UpdateStemmingOptionsRequest _
Generic UpdateStemmingOptionsRequest _
Show UpdateStemmingOptionsRequest
Decode UpdateStemmingOptionsRequest
Encode UpdateStemmingOptionsRequest
```

#### `newUpdateStemmingOptionsRequest`

``` purescript
newUpdateStemmingOptionsRequest :: DomainName -> StemsDocument -> UpdateStemmingOptionsRequest
```

Constructs UpdateStemmingOptionsRequest from required parameters

#### `newUpdateStemmingOptionsRequest'`

``` purescript
newUpdateStemmingOptionsRequest' :: DomainName -> StemsDocument -> ({ "DomainName" :: DomainName, "Stems" :: StemsDocument } -> { "DomainName" :: DomainName, "Stems" :: StemsDocument }) -> UpdateStemmingOptionsRequest
```

Constructs UpdateStemmingOptionsRequest's fields from required parameters

#### `UpdateStemmingOptionsResponse`

``` purescript
newtype UpdateStemmingOptionsResponse
  = UpdateStemmingOptionsResponse { "Stems" :: StemmingOptionsStatus }
```

<p>A response message that contains the status of updated stemming options.</p>

##### Instances
``` purescript
Newtype UpdateStemmingOptionsResponse _
Generic UpdateStemmingOptionsResponse _
Show UpdateStemmingOptionsResponse
Decode UpdateStemmingOptionsResponse
Encode UpdateStemmingOptionsResponse
```

#### `newUpdateStemmingOptionsResponse`

``` purescript
newUpdateStemmingOptionsResponse :: StemmingOptionsStatus -> UpdateStemmingOptionsResponse
```

Constructs UpdateStemmingOptionsResponse from required parameters

#### `newUpdateStemmingOptionsResponse'`

``` purescript
newUpdateStemmingOptionsResponse' :: StemmingOptionsStatus -> ({ "Stems" :: StemmingOptionsStatus } -> { "Stems" :: StemmingOptionsStatus }) -> UpdateStemmingOptionsResponse
```

Constructs UpdateStemmingOptionsResponse's fields from required parameters

#### `UpdateStopwordOptionsRequest`

``` purescript
newtype UpdateStopwordOptionsRequest
  = UpdateStopwordOptionsRequest { "DomainName" :: DomainName, "Stopwords" :: StopwordsDocument }
```

##### Instances
``` purescript
Newtype UpdateStopwordOptionsRequest _
Generic UpdateStopwordOptionsRequest _
Show UpdateStopwordOptionsRequest
Decode UpdateStopwordOptionsRequest
Encode UpdateStopwordOptionsRequest
```

#### `newUpdateStopwordOptionsRequest`

``` purescript
newUpdateStopwordOptionsRequest :: DomainName -> StopwordsDocument -> UpdateStopwordOptionsRequest
```

Constructs UpdateStopwordOptionsRequest from required parameters

#### `newUpdateStopwordOptionsRequest'`

``` purescript
newUpdateStopwordOptionsRequest' :: DomainName -> StopwordsDocument -> ({ "DomainName" :: DomainName, "Stopwords" :: StopwordsDocument } -> { "DomainName" :: DomainName, "Stopwords" :: StopwordsDocument }) -> UpdateStopwordOptionsRequest
```

Constructs UpdateStopwordOptionsRequest's fields from required parameters

#### `UpdateStopwordOptionsResponse`

``` purescript
newtype UpdateStopwordOptionsResponse
  = UpdateStopwordOptionsResponse { "Stopwords" :: StopwordOptionsStatus }
```

<p>A response message that contains the status of updated stopword options.</p>

##### Instances
``` purescript
Newtype UpdateStopwordOptionsResponse _
Generic UpdateStopwordOptionsResponse _
Show UpdateStopwordOptionsResponse
Decode UpdateStopwordOptionsResponse
Encode UpdateStopwordOptionsResponse
```

#### `newUpdateStopwordOptionsResponse`

``` purescript
newUpdateStopwordOptionsResponse :: StopwordOptionsStatus -> UpdateStopwordOptionsResponse
```

Constructs UpdateStopwordOptionsResponse from required parameters

#### `newUpdateStopwordOptionsResponse'`

``` purescript
newUpdateStopwordOptionsResponse' :: StopwordOptionsStatus -> ({ "Stopwords" :: StopwordOptionsStatus } -> { "Stopwords" :: StopwordOptionsStatus }) -> UpdateStopwordOptionsResponse
```

Constructs UpdateStopwordOptionsResponse's fields from required parameters

#### `UpdateSynonymOptionsRequest`

``` purescript
newtype UpdateSynonymOptionsRequest
  = UpdateSynonymOptionsRequest { "DomainName" :: DomainName, "Synonyms" :: SynonymsDocument }
```

##### Instances
``` purescript
Newtype UpdateSynonymOptionsRequest _
Generic UpdateSynonymOptionsRequest _
Show UpdateSynonymOptionsRequest
Decode UpdateSynonymOptionsRequest
Encode UpdateSynonymOptionsRequest
```

#### `newUpdateSynonymOptionsRequest`

``` purescript
newUpdateSynonymOptionsRequest :: DomainName -> SynonymsDocument -> UpdateSynonymOptionsRequest
```

Constructs UpdateSynonymOptionsRequest from required parameters

#### `newUpdateSynonymOptionsRequest'`

``` purescript
newUpdateSynonymOptionsRequest' :: DomainName -> SynonymsDocument -> ({ "DomainName" :: DomainName, "Synonyms" :: SynonymsDocument } -> { "DomainName" :: DomainName, "Synonyms" :: SynonymsDocument }) -> UpdateSynonymOptionsRequest
```

Constructs UpdateSynonymOptionsRequest's fields from required parameters

#### `UpdateSynonymOptionsResponse`

``` purescript
newtype UpdateSynonymOptionsResponse
  = UpdateSynonymOptionsResponse { "Synonyms" :: SynonymOptionsStatus }
```

<p>A response message that contains the status of updated synonym options.</p>

##### Instances
``` purescript
Newtype UpdateSynonymOptionsResponse _
Generic UpdateSynonymOptionsResponse _
Show UpdateSynonymOptionsResponse
Decode UpdateSynonymOptionsResponse
Encode UpdateSynonymOptionsResponse
```

#### `newUpdateSynonymOptionsResponse`

``` purescript
newUpdateSynonymOptionsResponse :: SynonymOptionsStatus -> UpdateSynonymOptionsResponse
```

Constructs UpdateSynonymOptionsResponse from required parameters

#### `newUpdateSynonymOptionsResponse'`

``` purescript
newUpdateSynonymOptionsResponse' :: SynonymOptionsStatus -> ({ "Synonyms" :: SynonymOptionsStatus } -> { "Synonyms" :: SynonymOptionsStatus }) -> UpdateSynonymOptionsResponse
```

Constructs UpdateSynonymOptionsResponse's fields from required parameters

#### `UpdateTimestamp`

``` purescript
newtype UpdateTimestamp
  = UpdateTimestamp Timestamp
```

##### Instances
``` purescript
Newtype UpdateTimestamp _
Generic UpdateTimestamp _
Show UpdateTimestamp
Decode UpdateTimestamp
Encode UpdateTimestamp
```


