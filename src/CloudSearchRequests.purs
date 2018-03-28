
module AWS.CloudSearch.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CloudSearch as CloudSearch
import AWS.CloudSearch.Types as CloudSearchTypes


-- | <p>Creates a new search domain.</p>
createDomain :: forall eff. CloudSearch.Service -> CloudSearchTypes.CreateDomainRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.CreateDomainResponse
createDomain (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDomain"


-- | <p>Configures an <code>IndexField</code> for the search domain. Used to create new fields and modify existing ones. If the field exists, the new configuration replaces the old one. You can configure a maximum of 200 index fields.</p>
defineIndexField :: forall eff. CloudSearch.Service -> CloudSearchTypes.DefineIndexFieldRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DefineIndexFieldResponse
defineIndexField (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "defineIndexField"


-- | <p>Configures a <code>RankExpression</code> for the search domain. Used to create new rank expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. You can configure a maximum of 50 rank expressions.</p>
defineRankExpression :: forall eff. CloudSearch.Service -> CloudSearchTypes.DefineRankExpressionRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DefineRankExpressionResponse
defineRankExpression (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "defineRankExpression"


-- | <p>Permanently deletes a search domain and all of its data.</p>
deleteDomain :: forall eff. CloudSearch.Service -> CloudSearchTypes.DeleteDomainRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DeleteDomainResponse
deleteDomain (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDomain"


-- | <p>Removes an <code>IndexField</code> from the search domain.</p>
deleteIndexField :: forall eff. CloudSearch.Service -> CloudSearchTypes.DeleteIndexFieldRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DeleteIndexFieldResponse
deleteIndexField (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIndexField"


-- | <p>Removes a <code>RankExpression</code> from the search domain.</p>
deleteRankExpression :: forall eff. CloudSearch.Service -> CloudSearchTypes.DeleteRankExpressionRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DeleteRankExpressionResponse
deleteRankExpression (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRankExpression"


-- | <p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
describeAvailabilityOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeAvailabilityOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeAvailabilityOptionsResponse
describeAvailabilityOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAvailabilityOptions"


-- | <p>Gets the default search field configured for the search domain.</p>
describeDefaultSearchField :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeDefaultSearchFieldRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeDefaultSearchFieldResponse
describeDefaultSearchField (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDefaultSearchField"


-- | <p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default.</p>
describeDomains :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeDomainsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeDomainsResponse
describeDomains (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDomains"


-- | <p>Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. Shows all fields by default.</p>
describeIndexFields :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeIndexFieldsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeIndexFieldsResponse
describeIndexFields (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIndexFields"


-- | <p>Gets the rank expressions configured for the search domain. Can be limited to specific rank expressions by name. Shows all rank expressions by default. </p>
describeRankExpressions :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeRankExpressionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeRankExpressionsResponse
describeRankExpressions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRankExpressions"


-- | <p>Gets information about the resource-based policies that control access to the domain's document and search services.</p>
describeServiceAccessPolicies :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeServiceAccessPoliciesRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeServiceAccessPoliciesResponse
describeServiceAccessPolicies (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeServiceAccessPolicies"


-- | <p>Gets the stemming dictionary configured for the search domain.</p>
describeStemmingOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeStemmingOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeStemmingOptionsResponse
describeStemmingOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStemmingOptions"


-- | <p>Gets the stopwords configured for the search domain.</p>
describeStopwordOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeStopwordOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeStopwordOptionsResponse
describeStopwordOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStopwordOptions"


-- | <p>Gets the synonym dictionary configured for the search domain.</p>
describeSynonymOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.DescribeSynonymOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.DescribeSynonymOptionsResponse
describeSynonymOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSynonymOptions"


-- | <p>Tells the search domain to start indexing its documents using the latest text processing options and <code>IndexFields</code>. This operation must be invoked to make options whose <a>OptionStatus</a> has <code>OptionState</code> of <code>RequiresIndexDocuments</code> visible in search results.</p>
indexDocuments :: forall eff. CloudSearch.Service -> CloudSearchTypes.IndexDocumentsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.IndexDocumentsResponse
indexDocuments (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "indexDocuments"


-- | <p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
updateAvailabilityOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.UpdateAvailabilityOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.UpdateAvailabilityOptionsResponse
updateAvailabilityOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAvailabilityOptions"


-- | <p>Configures the default search field for the search domain. The default search field is the text field that is searched when a search request does not specify which fields to search. By default, it is configured to include the contents of all of the domain's text fields. </p>
updateDefaultSearchField :: forall eff. CloudSearch.Service -> CloudSearchTypes.UpdateDefaultSearchFieldRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.UpdateDefaultSearchFieldResponse
updateDefaultSearchField (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDefaultSearchField"


-- | <p>Configures the policies that control access to the domain's document and search services. The maximum size of an access policy document is 100 KB.</p>
updateServiceAccessPolicies :: forall eff. CloudSearch.Service -> CloudSearchTypes.UpdateServiceAccessPoliciesRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.UpdateServiceAccessPoliciesResponse
updateServiceAccessPolicies (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateServiceAccessPolicies"


-- | <p>Configures a stemming dictionary for the search domain. The stemming dictionary is used during indexing and when processing search requests. The maximum size of the stemming dictionary is 500 KB.</p>
updateStemmingOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.UpdateStemmingOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.UpdateStemmingOptionsResponse
updateStemmingOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateStemmingOptions"


-- | <p>Configures stopwords for the search domain. Stopwords are used during indexing and when processing search requests. The maximum size of the stopwords dictionary is 10 KB.</p>
updateStopwordOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.UpdateStopwordOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.UpdateStopwordOptionsResponse
updateStopwordOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateStopwordOptions"


-- | <p>Configures a synonym dictionary for the search domain. The synonym dictionary is used during indexing to configure mappings for terms that occur in text fields. The maximum size of the synonym dictionary is 100 KB. </p>
updateSynonymOptions :: forall eff. CloudSearch.Service -> CloudSearchTypes.UpdateSynonymOptionsRequest -> Aff (exception :: EXCEPTION | eff) CloudSearchTypes.UpdateSynonymOptionsResponse
updateSynonymOptions (CloudSearch.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSynonymOptions"
