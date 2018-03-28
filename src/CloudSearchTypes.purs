
module AWS.CloudSearch.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>A <code>PolicyDocument</code> that specifies access policies for the search domain's services, and the current status of those policies.</p>
newtype AccessPoliciesStatus = AccessPoliciesStatus 
  { "Options" :: (PolicyDocument)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeAccessPoliciesStatus :: Newtype AccessPoliciesStatus _
derive instance repGenericAccessPoliciesStatus :: Generic AccessPoliciesStatus _
instance showAccessPoliciesStatus :: Show AccessPoliciesStatus where show = genericShow
instance decodeAccessPoliciesStatus :: Decode AccessPoliciesStatus where decode = genericDecode options
instance encodeAccessPoliciesStatus :: Encode AccessPoliciesStatus where encode = genericEncode options

-- | Constructs AccessPoliciesStatus from required parameters
newAccessPoliciesStatus :: PolicyDocument -> OptionStatus -> AccessPoliciesStatus
newAccessPoliciesStatus _Options _Status = AccessPoliciesStatus { "Options": _Options, "Status": _Status }

-- | Constructs AccessPoliciesStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessPoliciesStatus' :: PolicyDocument -> OptionStatus -> ( { "Options" :: (PolicyDocument) , "Status" :: (OptionStatus) } -> {"Options" :: (PolicyDocument) , "Status" :: (OptionStatus) } ) -> AccessPoliciesStatus
newAccessPoliciesStatus' _Options _Status customize = (AccessPoliciesStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>An Amazon Resource Name (ARN). See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



-- | <p>The status and configuration of the domain's availability options.</p>
newtype AvailabilityOptionsStatus = AvailabilityOptionsStatus 
  { "Options" :: (MultiAZ)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeAvailabilityOptionsStatus :: Newtype AvailabilityOptionsStatus _
derive instance repGenericAvailabilityOptionsStatus :: Generic AvailabilityOptionsStatus _
instance showAvailabilityOptionsStatus :: Show AvailabilityOptionsStatus where show = genericShow
instance decodeAvailabilityOptionsStatus :: Decode AvailabilityOptionsStatus where decode = genericDecode options
instance encodeAvailabilityOptionsStatus :: Encode AvailabilityOptionsStatus where encode = genericEncode options

-- | Constructs AvailabilityOptionsStatus from required parameters
newAvailabilityOptionsStatus :: MultiAZ -> OptionStatus -> AvailabilityOptionsStatus
newAvailabilityOptionsStatus _Options _Status = AvailabilityOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs AvailabilityOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAvailabilityOptionsStatus' :: MultiAZ -> OptionStatus -> ( { "Options" :: (MultiAZ) , "Status" :: (OptionStatus) } -> {"Options" :: (MultiAZ) , "Status" :: (OptionStatus) } ) -> AvailabilityOptionsStatus
newAvailabilityOptionsStatus' _Options _Status customize = (AvailabilityOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>An error occurred while processing the request.</p>
newtype BaseException = BaseException 
  { "Code" :: NullOrUndefined (ErrorCode)
  , "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeBaseException :: Newtype BaseException _
derive instance repGenericBaseException :: Generic BaseException _
instance showBaseException :: Show BaseException where show = genericShow
instance decodeBaseException :: Decode BaseException where decode = genericDecode options
instance encodeBaseException :: Encode BaseException where encode = genericEncode options

-- | Constructs BaseException from required parameters
newBaseException :: BaseException
newBaseException  = BaseException { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs BaseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBaseException' :: ( { "Code" :: NullOrUndefined (ErrorCode) , "Message" :: NullOrUndefined (ErrorMessage) } -> {"Code" :: NullOrUndefined (ErrorCode) , "Message" :: NullOrUndefined (ErrorMessage) } ) -> BaseException
newBaseException'  customize = (BaseException <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype CreateDomainRequest = CreateDomainRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeCreateDomainRequest :: Newtype CreateDomainRequest _
derive instance repGenericCreateDomainRequest :: Generic CreateDomainRequest _
instance showCreateDomainRequest :: Show CreateDomainRequest where show = genericShow
instance decodeCreateDomainRequest :: Decode CreateDomainRequest where decode = genericDecode options
instance encodeCreateDomainRequest :: Encode CreateDomainRequest where encode = genericEncode options

-- | Constructs CreateDomainRequest from required parameters
newCreateDomainRequest :: DomainName -> CreateDomainRequest
newCreateDomainRequest _DomainName = CreateDomainRequest { "DomainName": _DomainName }

-- | Constructs CreateDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> CreateDomainRequest
newCreateDomainRequest' _DomainName customize = (CreateDomainRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the status of a newly created domain.</p>
newtype CreateDomainResponse = CreateDomainResponse 
  { "DomainStatus" :: NullOrUndefined (DomainStatus)
  }
derive instance newtypeCreateDomainResponse :: Newtype CreateDomainResponse _
derive instance repGenericCreateDomainResponse :: Generic CreateDomainResponse _
instance showCreateDomainResponse :: Show CreateDomainResponse where show = genericShow
instance decodeCreateDomainResponse :: Decode CreateDomainResponse where decode = genericDecode options
instance encodeCreateDomainResponse :: Encode CreateDomainResponse where encode = genericEncode options

-- | Constructs CreateDomainResponse from required parameters
newCreateDomainResponse :: CreateDomainResponse
newCreateDomainResponse  = CreateDomainResponse { "DomainStatus": (NullOrUndefined Nothing) }

-- | Constructs CreateDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDomainResponse' :: ( { "DomainStatus" :: NullOrUndefined (DomainStatus) } -> {"DomainStatus" :: NullOrUndefined (DomainStatus) } ) -> CreateDomainResponse
newCreateDomainResponse'  customize = (CreateDomainResponse <<< customize) { "DomainStatus": (NullOrUndefined Nothing) }



-- | <p>The value of the <code>DefaultSearchField</code> configured for this search domain and its current status.</p>
newtype DefaultSearchFieldStatus = DefaultSearchFieldStatus 
  { "Options" :: (FieldName)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeDefaultSearchFieldStatus :: Newtype DefaultSearchFieldStatus _
derive instance repGenericDefaultSearchFieldStatus :: Generic DefaultSearchFieldStatus _
instance showDefaultSearchFieldStatus :: Show DefaultSearchFieldStatus where show = genericShow
instance decodeDefaultSearchFieldStatus :: Decode DefaultSearchFieldStatus where decode = genericDecode options
instance encodeDefaultSearchFieldStatus :: Encode DefaultSearchFieldStatus where encode = genericEncode options

-- | Constructs DefaultSearchFieldStatus from required parameters
newDefaultSearchFieldStatus :: FieldName -> OptionStatus -> DefaultSearchFieldStatus
newDefaultSearchFieldStatus _Options _Status = DefaultSearchFieldStatus { "Options": _Options, "Status": _Status }

-- | Constructs DefaultSearchFieldStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefaultSearchFieldStatus' :: FieldName -> OptionStatus -> ( { "Options" :: (FieldName) , "Status" :: (OptionStatus) } -> {"Options" :: (FieldName) , "Status" :: (OptionStatus) } ) -> DefaultSearchFieldStatus
newDefaultSearchFieldStatus' _Options _Status customize = (DefaultSearchFieldStatus <<< customize) { "Options": _Options, "Status": _Status }



newtype DefineIndexFieldRequest = DefineIndexFieldRequest 
  { "DomainName" :: (DomainName)
  , "IndexField" :: (IndexField)
  }
derive instance newtypeDefineIndexFieldRequest :: Newtype DefineIndexFieldRequest _
derive instance repGenericDefineIndexFieldRequest :: Generic DefineIndexFieldRequest _
instance showDefineIndexFieldRequest :: Show DefineIndexFieldRequest where show = genericShow
instance decodeDefineIndexFieldRequest :: Decode DefineIndexFieldRequest where decode = genericDecode options
instance encodeDefineIndexFieldRequest :: Encode DefineIndexFieldRequest where encode = genericEncode options

-- | Constructs DefineIndexFieldRequest from required parameters
newDefineIndexFieldRequest :: DomainName -> IndexField -> DefineIndexFieldRequest
newDefineIndexFieldRequest _DomainName _IndexField = DefineIndexFieldRequest { "DomainName": _DomainName, "IndexField": _IndexField }

-- | Constructs DefineIndexFieldRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefineIndexFieldRequest' :: DomainName -> IndexField -> ( { "DomainName" :: (DomainName) , "IndexField" :: (IndexField) } -> {"DomainName" :: (DomainName) , "IndexField" :: (IndexField) } ) -> DefineIndexFieldRequest
newDefineIndexFieldRequest' _DomainName _IndexField customize = (DefineIndexFieldRequest <<< customize) { "DomainName": _DomainName, "IndexField": _IndexField }



-- | <p>A response message that contains the status of an updated index field.</p>
newtype DefineIndexFieldResponse = DefineIndexFieldResponse 
  { "IndexField" :: (IndexFieldStatus)
  }
derive instance newtypeDefineIndexFieldResponse :: Newtype DefineIndexFieldResponse _
derive instance repGenericDefineIndexFieldResponse :: Generic DefineIndexFieldResponse _
instance showDefineIndexFieldResponse :: Show DefineIndexFieldResponse where show = genericShow
instance decodeDefineIndexFieldResponse :: Decode DefineIndexFieldResponse where decode = genericDecode options
instance encodeDefineIndexFieldResponse :: Encode DefineIndexFieldResponse where encode = genericEncode options

-- | Constructs DefineIndexFieldResponse from required parameters
newDefineIndexFieldResponse :: IndexFieldStatus -> DefineIndexFieldResponse
newDefineIndexFieldResponse _IndexField = DefineIndexFieldResponse { "IndexField": _IndexField }

-- | Constructs DefineIndexFieldResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefineIndexFieldResponse' :: IndexFieldStatus -> ( { "IndexField" :: (IndexFieldStatus) } -> {"IndexField" :: (IndexFieldStatus) } ) -> DefineIndexFieldResponse
newDefineIndexFieldResponse' _IndexField customize = (DefineIndexFieldResponse <<< customize) { "IndexField": _IndexField }



newtype DefineRankExpressionRequest = DefineRankExpressionRequest 
  { "DomainName" :: (DomainName)
  , "RankExpression" :: (NamedRankExpression)
  }
derive instance newtypeDefineRankExpressionRequest :: Newtype DefineRankExpressionRequest _
derive instance repGenericDefineRankExpressionRequest :: Generic DefineRankExpressionRequest _
instance showDefineRankExpressionRequest :: Show DefineRankExpressionRequest where show = genericShow
instance decodeDefineRankExpressionRequest :: Decode DefineRankExpressionRequest where decode = genericDecode options
instance encodeDefineRankExpressionRequest :: Encode DefineRankExpressionRequest where encode = genericEncode options

-- | Constructs DefineRankExpressionRequest from required parameters
newDefineRankExpressionRequest :: DomainName -> NamedRankExpression -> DefineRankExpressionRequest
newDefineRankExpressionRequest _DomainName _RankExpression = DefineRankExpressionRequest { "DomainName": _DomainName, "RankExpression": _RankExpression }

-- | Constructs DefineRankExpressionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefineRankExpressionRequest' :: DomainName -> NamedRankExpression -> ( { "DomainName" :: (DomainName) , "RankExpression" :: (NamedRankExpression) } -> {"DomainName" :: (DomainName) , "RankExpression" :: (NamedRankExpression) } ) -> DefineRankExpressionRequest
newDefineRankExpressionRequest' _DomainName _RankExpression customize = (DefineRankExpressionRequest <<< customize) { "DomainName": _DomainName, "RankExpression": _RankExpression }



-- | <p>A response message that contains the status of an updated <code>RankExpression</code>.</p>
newtype DefineRankExpressionResponse = DefineRankExpressionResponse 
  { "RankExpression" :: (RankExpressionStatus)
  }
derive instance newtypeDefineRankExpressionResponse :: Newtype DefineRankExpressionResponse _
derive instance repGenericDefineRankExpressionResponse :: Generic DefineRankExpressionResponse _
instance showDefineRankExpressionResponse :: Show DefineRankExpressionResponse where show = genericShow
instance decodeDefineRankExpressionResponse :: Decode DefineRankExpressionResponse where decode = genericDecode options
instance encodeDefineRankExpressionResponse :: Encode DefineRankExpressionResponse where encode = genericEncode options

-- | Constructs DefineRankExpressionResponse from required parameters
newDefineRankExpressionResponse :: RankExpressionStatus -> DefineRankExpressionResponse
newDefineRankExpressionResponse _RankExpression = DefineRankExpressionResponse { "RankExpression": _RankExpression }

-- | Constructs DefineRankExpressionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefineRankExpressionResponse' :: RankExpressionStatus -> ( { "RankExpression" :: (RankExpressionStatus) } -> {"RankExpression" :: (RankExpressionStatus) } ) -> DefineRankExpressionResponse
newDefineRankExpressionResponse' _RankExpression customize = (DefineRankExpressionResponse <<< customize) { "RankExpression": _RankExpression }



newtype DeleteDomainRequest = DeleteDomainRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDeleteDomainRequest :: Newtype DeleteDomainRequest _
derive instance repGenericDeleteDomainRequest :: Generic DeleteDomainRequest _
instance showDeleteDomainRequest :: Show DeleteDomainRequest where show = genericShow
instance decodeDeleteDomainRequest :: Decode DeleteDomainRequest where decode = genericDecode options
instance encodeDeleteDomainRequest :: Encode DeleteDomainRequest where encode = genericEncode options

-- | Constructs DeleteDomainRequest from required parameters
newDeleteDomainRequest :: DomainName -> DeleteDomainRequest
newDeleteDomainRequest _DomainName = DeleteDomainRequest { "DomainName": _DomainName }

-- | Constructs DeleteDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DeleteDomainRequest
newDeleteDomainRequest' _DomainName customize = (DeleteDomainRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>
newtype DeleteDomainResponse = DeleteDomainResponse 
  { "DomainStatus" :: NullOrUndefined (DomainStatus)
  }
derive instance newtypeDeleteDomainResponse :: Newtype DeleteDomainResponse _
derive instance repGenericDeleteDomainResponse :: Generic DeleteDomainResponse _
instance showDeleteDomainResponse :: Show DeleteDomainResponse where show = genericShow
instance decodeDeleteDomainResponse :: Decode DeleteDomainResponse where decode = genericDecode options
instance encodeDeleteDomainResponse :: Encode DeleteDomainResponse where encode = genericEncode options

-- | Constructs DeleteDomainResponse from required parameters
newDeleteDomainResponse :: DeleteDomainResponse
newDeleteDomainResponse  = DeleteDomainResponse { "DomainStatus": (NullOrUndefined Nothing) }

-- | Constructs DeleteDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDomainResponse' :: ( { "DomainStatus" :: NullOrUndefined (DomainStatus) } -> {"DomainStatus" :: NullOrUndefined (DomainStatus) } ) -> DeleteDomainResponse
newDeleteDomainResponse'  customize = (DeleteDomainResponse <<< customize) { "DomainStatus": (NullOrUndefined Nothing) }



newtype DeleteIndexFieldRequest = DeleteIndexFieldRequest 
  { "DomainName" :: (DomainName)
  , "IndexFieldName" :: (FieldName)
  }
derive instance newtypeDeleteIndexFieldRequest :: Newtype DeleteIndexFieldRequest _
derive instance repGenericDeleteIndexFieldRequest :: Generic DeleteIndexFieldRequest _
instance showDeleteIndexFieldRequest :: Show DeleteIndexFieldRequest where show = genericShow
instance decodeDeleteIndexFieldRequest :: Decode DeleteIndexFieldRequest where decode = genericDecode options
instance encodeDeleteIndexFieldRequest :: Encode DeleteIndexFieldRequest where encode = genericEncode options

-- | Constructs DeleteIndexFieldRequest from required parameters
newDeleteIndexFieldRequest :: DomainName -> FieldName -> DeleteIndexFieldRequest
newDeleteIndexFieldRequest _DomainName _IndexFieldName = DeleteIndexFieldRequest { "DomainName": _DomainName, "IndexFieldName": _IndexFieldName }

-- | Constructs DeleteIndexFieldRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIndexFieldRequest' :: DomainName -> FieldName -> ( { "DomainName" :: (DomainName) , "IndexFieldName" :: (FieldName) } -> {"DomainName" :: (DomainName) , "IndexFieldName" :: (FieldName) } ) -> DeleteIndexFieldRequest
newDeleteIndexFieldRequest' _DomainName _IndexFieldName customize = (DeleteIndexFieldRequest <<< customize) { "DomainName": _DomainName, "IndexFieldName": _IndexFieldName }



-- | <p>A response message that contains the status of a deleted index field.</p>
newtype DeleteIndexFieldResponse = DeleteIndexFieldResponse 
  { "IndexField" :: (IndexFieldStatus)
  }
derive instance newtypeDeleteIndexFieldResponse :: Newtype DeleteIndexFieldResponse _
derive instance repGenericDeleteIndexFieldResponse :: Generic DeleteIndexFieldResponse _
instance showDeleteIndexFieldResponse :: Show DeleteIndexFieldResponse where show = genericShow
instance decodeDeleteIndexFieldResponse :: Decode DeleteIndexFieldResponse where decode = genericDecode options
instance encodeDeleteIndexFieldResponse :: Encode DeleteIndexFieldResponse where encode = genericEncode options

-- | Constructs DeleteIndexFieldResponse from required parameters
newDeleteIndexFieldResponse :: IndexFieldStatus -> DeleteIndexFieldResponse
newDeleteIndexFieldResponse _IndexField = DeleteIndexFieldResponse { "IndexField": _IndexField }

-- | Constructs DeleteIndexFieldResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIndexFieldResponse' :: IndexFieldStatus -> ( { "IndexField" :: (IndexFieldStatus) } -> {"IndexField" :: (IndexFieldStatus) } ) -> DeleteIndexFieldResponse
newDeleteIndexFieldResponse' _IndexField customize = (DeleteIndexFieldResponse <<< customize) { "IndexField": _IndexField }



newtype DeleteRankExpressionRequest = DeleteRankExpressionRequest 
  { "DomainName" :: (DomainName)
  , "RankName" :: (FieldName)
  }
derive instance newtypeDeleteRankExpressionRequest :: Newtype DeleteRankExpressionRequest _
derive instance repGenericDeleteRankExpressionRequest :: Generic DeleteRankExpressionRequest _
instance showDeleteRankExpressionRequest :: Show DeleteRankExpressionRequest where show = genericShow
instance decodeDeleteRankExpressionRequest :: Decode DeleteRankExpressionRequest where decode = genericDecode options
instance encodeDeleteRankExpressionRequest :: Encode DeleteRankExpressionRequest where encode = genericEncode options

-- | Constructs DeleteRankExpressionRequest from required parameters
newDeleteRankExpressionRequest :: DomainName -> FieldName -> DeleteRankExpressionRequest
newDeleteRankExpressionRequest _DomainName _RankName = DeleteRankExpressionRequest { "DomainName": _DomainName, "RankName": _RankName }

-- | Constructs DeleteRankExpressionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRankExpressionRequest' :: DomainName -> FieldName -> ( { "DomainName" :: (DomainName) , "RankName" :: (FieldName) } -> {"DomainName" :: (DomainName) , "RankName" :: (FieldName) } ) -> DeleteRankExpressionRequest
newDeleteRankExpressionRequest' _DomainName _RankName customize = (DeleteRankExpressionRequest <<< customize) { "DomainName": _DomainName, "RankName": _RankName }



-- | <p>A response message that contains the status of a deleted <code>RankExpression</code>.</p>
newtype DeleteRankExpressionResponse = DeleteRankExpressionResponse 
  { "RankExpression" :: (RankExpressionStatus)
  }
derive instance newtypeDeleteRankExpressionResponse :: Newtype DeleteRankExpressionResponse _
derive instance repGenericDeleteRankExpressionResponse :: Generic DeleteRankExpressionResponse _
instance showDeleteRankExpressionResponse :: Show DeleteRankExpressionResponse where show = genericShow
instance decodeDeleteRankExpressionResponse :: Decode DeleteRankExpressionResponse where decode = genericDecode options
instance encodeDeleteRankExpressionResponse :: Encode DeleteRankExpressionResponse where encode = genericEncode options

-- | Constructs DeleteRankExpressionResponse from required parameters
newDeleteRankExpressionResponse :: RankExpressionStatus -> DeleteRankExpressionResponse
newDeleteRankExpressionResponse _RankExpression = DeleteRankExpressionResponse { "RankExpression": _RankExpression }

-- | Constructs DeleteRankExpressionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRankExpressionResponse' :: RankExpressionStatus -> ( { "RankExpression" :: (RankExpressionStatus) } -> {"RankExpression" :: (RankExpressionStatus) } ) -> DeleteRankExpressionResponse
newDeleteRankExpressionResponse' _RankExpression customize = (DeleteRankExpressionResponse <<< customize) { "RankExpression": _RankExpression }



-- | <p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>
newtype DescribeAvailabilityOptionsRequest = DescribeAvailabilityOptionsRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeAvailabilityOptionsRequest :: Newtype DescribeAvailabilityOptionsRequest _
derive instance repGenericDescribeAvailabilityOptionsRequest :: Generic DescribeAvailabilityOptionsRequest _
instance showDescribeAvailabilityOptionsRequest :: Show DescribeAvailabilityOptionsRequest where show = genericShow
instance decodeDescribeAvailabilityOptionsRequest :: Decode DescribeAvailabilityOptionsRequest where decode = genericDecode options
instance encodeDescribeAvailabilityOptionsRequest :: Encode DescribeAvailabilityOptionsRequest where encode = genericEncode options

-- | Constructs DescribeAvailabilityOptionsRequest from required parameters
newDescribeAvailabilityOptionsRequest :: DomainName -> DescribeAvailabilityOptionsRequest
newDescribeAvailabilityOptionsRequest _DomainName = DescribeAvailabilityOptionsRequest { "DomainName": _DomainName }

-- | Constructs DescribeAvailabilityOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAvailabilityOptionsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeAvailabilityOptionsRequest
newDescribeAvailabilityOptionsRequest' _DomainName customize = (DescribeAvailabilityOptionsRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>
newtype DescribeAvailabilityOptionsResponse = DescribeAvailabilityOptionsResponse 
  { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus)
  }
derive instance newtypeDescribeAvailabilityOptionsResponse :: Newtype DescribeAvailabilityOptionsResponse _
derive instance repGenericDescribeAvailabilityOptionsResponse :: Generic DescribeAvailabilityOptionsResponse _
instance showDescribeAvailabilityOptionsResponse :: Show DescribeAvailabilityOptionsResponse where show = genericShow
instance decodeDescribeAvailabilityOptionsResponse :: Decode DescribeAvailabilityOptionsResponse where decode = genericDecode options
instance encodeDescribeAvailabilityOptionsResponse :: Encode DescribeAvailabilityOptionsResponse where encode = genericEncode options

-- | Constructs DescribeAvailabilityOptionsResponse from required parameters
newDescribeAvailabilityOptionsResponse :: DescribeAvailabilityOptionsResponse
newDescribeAvailabilityOptionsResponse  = DescribeAvailabilityOptionsResponse { "AvailabilityOptions": (NullOrUndefined Nothing) }

-- | Constructs DescribeAvailabilityOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAvailabilityOptionsResponse' :: ( { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) } -> {"AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) } ) -> DescribeAvailabilityOptionsResponse
newDescribeAvailabilityOptionsResponse'  customize = (DescribeAvailabilityOptionsResponse <<< customize) { "AvailabilityOptions": (NullOrUndefined Nothing) }



newtype DescribeDefaultSearchFieldRequest = DescribeDefaultSearchFieldRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeDefaultSearchFieldRequest :: Newtype DescribeDefaultSearchFieldRequest _
derive instance repGenericDescribeDefaultSearchFieldRequest :: Generic DescribeDefaultSearchFieldRequest _
instance showDescribeDefaultSearchFieldRequest :: Show DescribeDefaultSearchFieldRequest where show = genericShow
instance decodeDescribeDefaultSearchFieldRequest :: Decode DescribeDefaultSearchFieldRequest where decode = genericDecode options
instance encodeDescribeDefaultSearchFieldRequest :: Encode DescribeDefaultSearchFieldRequest where encode = genericEncode options

-- | Constructs DescribeDefaultSearchFieldRequest from required parameters
newDescribeDefaultSearchFieldRequest :: DomainName -> DescribeDefaultSearchFieldRequest
newDescribeDefaultSearchFieldRequest _DomainName = DescribeDefaultSearchFieldRequest { "DomainName": _DomainName }

-- | Constructs DescribeDefaultSearchFieldRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDefaultSearchFieldRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeDefaultSearchFieldRequest
newDescribeDefaultSearchFieldRequest' _DomainName customize = (DescribeDefaultSearchFieldRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the default search field for a search domain.</p>
newtype DescribeDefaultSearchFieldResponse = DescribeDefaultSearchFieldResponse 
  { "DefaultSearchField" :: (DefaultSearchFieldStatus)
  }
derive instance newtypeDescribeDefaultSearchFieldResponse :: Newtype DescribeDefaultSearchFieldResponse _
derive instance repGenericDescribeDefaultSearchFieldResponse :: Generic DescribeDefaultSearchFieldResponse _
instance showDescribeDefaultSearchFieldResponse :: Show DescribeDefaultSearchFieldResponse where show = genericShow
instance decodeDescribeDefaultSearchFieldResponse :: Decode DescribeDefaultSearchFieldResponse where decode = genericDecode options
instance encodeDescribeDefaultSearchFieldResponse :: Encode DescribeDefaultSearchFieldResponse where encode = genericEncode options

-- | Constructs DescribeDefaultSearchFieldResponse from required parameters
newDescribeDefaultSearchFieldResponse :: DefaultSearchFieldStatus -> DescribeDefaultSearchFieldResponse
newDescribeDefaultSearchFieldResponse _DefaultSearchField = DescribeDefaultSearchFieldResponse { "DefaultSearchField": _DefaultSearchField }

-- | Constructs DescribeDefaultSearchFieldResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDefaultSearchFieldResponse' :: DefaultSearchFieldStatus -> ( { "DefaultSearchField" :: (DefaultSearchFieldStatus) } -> {"DefaultSearchField" :: (DefaultSearchFieldStatus) } ) -> DescribeDefaultSearchFieldResponse
newDescribeDefaultSearchFieldResponse' _DefaultSearchField customize = (DescribeDefaultSearchFieldResponse <<< customize) { "DefaultSearchField": _DefaultSearchField }



newtype DescribeDomainsRequest = DescribeDomainsRequest 
  { "DomainNames" :: NullOrUndefined (DomainNameList)
  }
derive instance newtypeDescribeDomainsRequest :: Newtype DescribeDomainsRequest _
derive instance repGenericDescribeDomainsRequest :: Generic DescribeDomainsRequest _
instance showDescribeDomainsRequest :: Show DescribeDomainsRequest where show = genericShow
instance decodeDescribeDomainsRequest :: Decode DescribeDomainsRequest where decode = genericDecode options
instance encodeDescribeDomainsRequest :: Encode DescribeDomainsRequest where encode = genericEncode options

-- | Constructs DescribeDomainsRequest from required parameters
newDescribeDomainsRequest :: DescribeDomainsRequest
newDescribeDomainsRequest  = DescribeDomainsRequest { "DomainNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeDomainsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDomainsRequest' :: ( { "DomainNames" :: NullOrUndefined (DomainNameList) } -> {"DomainNames" :: NullOrUndefined (DomainNameList) } ) -> DescribeDomainsRequest
newDescribeDomainsRequest'  customize = (DescribeDomainsRequest <<< customize) { "DomainNames": (NullOrUndefined Nothing) }



-- | <p>A response message that contains the status of one or more domains.</p>
newtype DescribeDomainsResponse = DescribeDomainsResponse 
  { "DomainStatusList" :: (DomainStatusList)
  }
derive instance newtypeDescribeDomainsResponse :: Newtype DescribeDomainsResponse _
derive instance repGenericDescribeDomainsResponse :: Generic DescribeDomainsResponse _
instance showDescribeDomainsResponse :: Show DescribeDomainsResponse where show = genericShow
instance decodeDescribeDomainsResponse :: Decode DescribeDomainsResponse where decode = genericDecode options
instance encodeDescribeDomainsResponse :: Encode DescribeDomainsResponse where encode = genericEncode options

-- | Constructs DescribeDomainsResponse from required parameters
newDescribeDomainsResponse :: DomainStatusList -> DescribeDomainsResponse
newDescribeDomainsResponse _DomainStatusList = DescribeDomainsResponse { "DomainStatusList": _DomainStatusList }

-- | Constructs DescribeDomainsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDomainsResponse' :: DomainStatusList -> ( { "DomainStatusList" :: (DomainStatusList) } -> {"DomainStatusList" :: (DomainStatusList) } ) -> DescribeDomainsResponse
newDescribeDomainsResponse' _DomainStatusList customize = (DescribeDomainsResponse <<< customize) { "DomainStatusList": _DomainStatusList }



newtype DescribeIndexFieldsRequest = DescribeIndexFieldsRequest 
  { "DomainName" :: (DomainName)
  , "FieldNames" :: NullOrUndefined (FieldNameList)
  }
derive instance newtypeDescribeIndexFieldsRequest :: Newtype DescribeIndexFieldsRequest _
derive instance repGenericDescribeIndexFieldsRequest :: Generic DescribeIndexFieldsRequest _
instance showDescribeIndexFieldsRequest :: Show DescribeIndexFieldsRequest where show = genericShow
instance decodeDescribeIndexFieldsRequest :: Decode DescribeIndexFieldsRequest where decode = genericDecode options
instance encodeDescribeIndexFieldsRequest :: Encode DescribeIndexFieldsRequest where encode = genericEncode options

-- | Constructs DescribeIndexFieldsRequest from required parameters
newDescribeIndexFieldsRequest :: DomainName -> DescribeIndexFieldsRequest
newDescribeIndexFieldsRequest _DomainName = DescribeIndexFieldsRequest { "DomainName": _DomainName, "FieldNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeIndexFieldsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIndexFieldsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "FieldNames" :: NullOrUndefined (FieldNameList) } -> {"DomainName" :: (DomainName) , "FieldNames" :: NullOrUndefined (FieldNameList) } ) -> DescribeIndexFieldsRequest
newDescribeIndexFieldsRequest' _DomainName customize = (DescribeIndexFieldsRequest <<< customize) { "DomainName": _DomainName, "FieldNames": (NullOrUndefined Nothing) }



-- | <p>A response message that contains the index fields for a search domain.</p>
newtype DescribeIndexFieldsResponse = DescribeIndexFieldsResponse 
  { "IndexFields" :: (IndexFieldStatusList)
  }
derive instance newtypeDescribeIndexFieldsResponse :: Newtype DescribeIndexFieldsResponse _
derive instance repGenericDescribeIndexFieldsResponse :: Generic DescribeIndexFieldsResponse _
instance showDescribeIndexFieldsResponse :: Show DescribeIndexFieldsResponse where show = genericShow
instance decodeDescribeIndexFieldsResponse :: Decode DescribeIndexFieldsResponse where decode = genericDecode options
instance encodeDescribeIndexFieldsResponse :: Encode DescribeIndexFieldsResponse where encode = genericEncode options

-- | Constructs DescribeIndexFieldsResponse from required parameters
newDescribeIndexFieldsResponse :: IndexFieldStatusList -> DescribeIndexFieldsResponse
newDescribeIndexFieldsResponse _IndexFields = DescribeIndexFieldsResponse { "IndexFields": _IndexFields }

-- | Constructs DescribeIndexFieldsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIndexFieldsResponse' :: IndexFieldStatusList -> ( { "IndexFields" :: (IndexFieldStatusList) } -> {"IndexFields" :: (IndexFieldStatusList) } ) -> DescribeIndexFieldsResponse
newDescribeIndexFieldsResponse' _IndexFields customize = (DescribeIndexFieldsResponse <<< customize) { "IndexFields": _IndexFields }



newtype DescribeRankExpressionsRequest = DescribeRankExpressionsRequest 
  { "DomainName" :: (DomainName)
  , "RankNames" :: NullOrUndefined (FieldNameList)
  }
derive instance newtypeDescribeRankExpressionsRequest :: Newtype DescribeRankExpressionsRequest _
derive instance repGenericDescribeRankExpressionsRequest :: Generic DescribeRankExpressionsRequest _
instance showDescribeRankExpressionsRequest :: Show DescribeRankExpressionsRequest where show = genericShow
instance decodeDescribeRankExpressionsRequest :: Decode DescribeRankExpressionsRequest where decode = genericDecode options
instance encodeDescribeRankExpressionsRequest :: Encode DescribeRankExpressionsRequest where encode = genericEncode options

-- | Constructs DescribeRankExpressionsRequest from required parameters
newDescribeRankExpressionsRequest :: DomainName -> DescribeRankExpressionsRequest
newDescribeRankExpressionsRequest _DomainName = DescribeRankExpressionsRequest { "DomainName": _DomainName, "RankNames": (NullOrUndefined Nothing) }

-- | Constructs DescribeRankExpressionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRankExpressionsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "RankNames" :: NullOrUndefined (FieldNameList) } -> {"DomainName" :: (DomainName) , "RankNames" :: NullOrUndefined (FieldNameList) } ) -> DescribeRankExpressionsRequest
newDescribeRankExpressionsRequest' _DomainName customize = (DescribeRankExpressionsRequest <<< customize) { "DomainName": _DomainName, "RankNames": (NullOrUndefined Nothing) }



-- | <p>A response message that contains the rank expressions for a search domain.</p>
newtype DescribeRankExpressionsResponse = DescribeRankExpressionsResponse 
  { "RankExpressions" :: (RankExpressionStatusList)
  }
derive instance newtypeDescribeRankExpressionsResponse :: Newtype DescribeRankExpressionsResponse _
derive instance repGenericDescribeRankExpressionsResponse :: Generic DescribeRankExpressionsResponse _
instance showDescribeRankExpressionsResponse :: Show DescribeRankExpressionsResponse where show = genericShow
instance decodeDescribeRankExpressionsResponse :: Decode DescribeRankExpressionsResponse where decode = genericDecode options
instance encodeDescribeRankExpressionsResponse :: Encode DescribeRankExpressionsResponse where encode = genericEncode options

-- | Constructs DescribeRankExpressionsResponse from required parameters
newDescribeRankExpressionsResponse :: RankExpressionStatusList -> DescribeRankExpressionsResponse
newDescribeRankExpressionsResponse _RankExpressions = DescribeRankExpressionsResponse { "RankExpressions": _RankExpressions }

-- | Constructs DescribeRankExpressionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRankExpressionsResponse' :: RankExpressionStatusList -> ( { "RankExpressions" :: (RankExpressionStatusList) } -> {"RankExpressions" :: (RankExpressionStatusList) } ) -> DescribeRankExpressionsResponse
newDescribeRankExpressionsResponse' _RankExpressions customize = (DescribeRankExpressionsResponse <<< customize) { "RankExpressions": _RankExpressions }



newtype DescribeServiceAccessPoliciesRequest = DescribeServiceAccessPoliciesRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeServiceAccessPoliciesRequest :: Newtype DescribeServiceAccessPoliciesRequest _
derive instance repGenericDescribeServiceAccessPoliciesRequest :: Generic DescribeServiceAccessPoliciesRequest _
instance showDescribeServiceAccessPoliciesRequest :: Show DescribeServiceAccessPoliciesRequest where show = genericShow
instance decodeDescribeServiceAccessPoliciesRequest :: Decode DescribeServiceAccessPoliciesRequest where decode = genericDecode options
instance encodeDescribeServiceAccessPoliciesRequest :: Encode DescribeServiceAccessPoliciesRequest where encode = genericEncode options

-- | Constructs DescribeServiceAccessPoliciesRequest from required parameters
newDescribeServiceAccessPoliciesRequest :: DomainName -> DescribeServiceAccessPoliciesRequest
newDescribeServiceAccessPoliciesRequest _DomainName = DescribeServiceAccessPoliciesRequest { "DomainName": _DomainName }

-- | Constructs DescribeServiceAccessPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServiceAccessPoliciesRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeServiceAccessPoliciesRequest
newDescribeServiceAccessPoliciesRequest' _DomainName customize = (DescribeServiceAccessPoliciesRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the access policies for a domain.</p>
newtype DescribeServiceAccessPoliciesResponse = DescribeServiceAccessPoliciesResponse 
  { "AccessPolicies" :: (AccessPoliciesStatus)
  }
derive instance newtypeDescribeServiceAccessPoliciesResponse :: Newtype DescribeServiceAccessPoliciesResponse _
derive instance repGenericDescribeServiceAccessPoliciesResponse :: Generic DescribeServiceAccessPoliciesResponse _
instance showDescribeServiceAccessPoliciesResponse :: Show DescribeServiceAccessPoliciesResponse where show = genericShow
instance decodeDescribeServiceAccessPoliciesResponse :: Decode DescribeServiceAccessPoliciesResponse where decode = genericDecode options
instance encodeDescribeServiceAccessPoliciesResponse :: Encode DescribeServiceAccessPoliciesResponse where encode = genericEncode options

-- | Constructs DescribeServiceAccessPoliciesResponse from required parameters
newDescribeServiceAccessPoliciesResponse :: AccessPoliciesStatus -> DescribeServiceAccessPoliciesResponse
newDescribeServiceAccessPoliciesResponse _AccessPolicies = DescribeServiceAccessPoliciesResponse { "AccessPolicies": _AccessPolicies }

-- | Constructs DescribeServiceAccessPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServiceAccessPoliciesResponse' :: AccessPoliciesStatus -> ( { "AccessPolicies" :: (AccessPoliciesStatus) } -> {"AccessPolicies" :: (AccessPoliciesStatus) } ) -> DescribeServiceAccessPoliciesResponse
newDescribeServiceAccessPoliciesResponse' _AccessPolicies customize = (DescribeServiceAccessPoliciesResponse <<< customize) { "AccessPolicies": _AccessPolicies }



newtype DescribeStemmingOptionsRequest = DescribeStemmingOptionsRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeStemmingOptionsRequest :: Newtype DescribeStemmingOptionsRequest _
derive instance repGenericDescribeStemmingOptionsRequest :: Generic DescribeStemmingOptionsRequest _
instance showDescribeStemmingOptionsRequest :: Show DescribeStemmingOptionsRequest where show = genericShow
instance decodeDescribeStemmingOptionsRequest :: Decode DescribeStemmingOptionsRequest where decode = genericDecode options
instance encodeDescribeStemmingOptionsRequest :: Encode DescribeStemmingOptionsRequest where encode = genericEncode options

-- | Constructs DescribeStemmingOptionsRequest from required parameters
newDescribeStemmingOptionsRequest :: DomainName -> DescribeStemmingOptionsRequest
newDescribeStemmingOptionsRequest _DomainName = DescribeStemmingOptionsRequest { "DomainName": _DomainName }

-- | Constructs DescribeStemmingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStemmingOptionsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeStemmingOptionsRequest
newDescribeStemmingOptionsRequest' _DomainName customize = (DescribeStemmingOptionsRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the stemming options for a search domain.</p>
newtype DescribeStemmingOptionsResponse = DescribeStemmingOptionsResponse 
  { "Stems" :: (StemmingOptionsStatus)
  }
derive instance newtypeDescribeStemmingOptionsResponse :: Newtype DescribeStemmingOptionsResponse _
derive instance repGenericDescribeStemmingOptionsResponse :: Generic DescribeStemmingOptionsResponse _
instance showDescribeStemmingOptionsResponse :: Show DescribeStemmingOptionsResponse where show = genericShow
instance decodeDescribeStemmingOptionsResponse :: Decode DescribeStemmingOptionsResponse where decode = genericDecode options
instance encodeDescribeStemmingOptionsResponse :: Encode DescribeStemmingOptionsResponse where encode = genericEncode options

-- | Constructs DescribeStemmingOptionsResponse from required parameters
newDescribeStemmingOptionsResponse :: StemmingOptionsStatus -> DescribeStemmingOptionsResponse
newDescribeStemmingOptionsResponse _Stems = DescribeStemmingOptionsResponse { "Stems": _Stems }

-- | Constructs DescribeStemmingOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStemmingOptionsResponse' :: StemmingOptionsStatus -> ( { "Stems" :: (StemmingOptionsStatus) } -> {"Stems" :: (StemmingOptionsStatus) } ) -> DescribeStemmingOptionsResponse
newDescribeStemmingOptionsResponse' _Stems customize = (DescribeStemmingOptionsResponse <<< customize) { "Stems": _Stems }



newtype DescribeStopwordOptionsRequest = DescribeStopwordOptionsRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeStopwordOptionsRequest :: Newtype DescribeStopwordOptionsRequest _
derive instance repGenericDescribeStopwordOptionsRequest :: Generic DescribeStopwordOptionsRequest _
instance showDescribeStopwordOptionsRequest :: Show DescribeStopwordOptionsRequest where show = genericShow
instance decodeDescribeStopwordOptionsRequest :: Decode DescribeStopwordOptionsRequest where decode = genericDecode options
instance encodeDescribeStopwordOptionsRequest :: Encode DescribeStopwordOptionsRequest where encode = genericEncode options

-- | Constructs DescribeStopwordOptionsRequest from required parameters
newDescribeStopwordOptionsRequest :: DomainName -> DescribeStopwordOptionsRequest
newDescribeStopwordOptionsRequest _DomainName = DescribeStopwordOptionsRequest { "DomainName": _DomainName }

-- | Constructs DescribeStopwordOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStopwordOptionsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeStopwordOptionsRequest
newDescribeStopwordOptionsRequest' _DomainName customize = (DescribeStopwordOptionsRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the stopword options for a search domain.</p>
newtype DescribeStopwordOptionsResponse = DescribeStopwordOptionsResponse 
  { "Stopwords" :: (StopwordOptionsStatus)
  }
derive instance newtypeDescribeStopwordOptionsResponse :: Newtype DescribeStopwordOptionsResponse _
derive instance repGenericDescribeStopwordOptionsResponse :: Generic DescribeStopwordOptionsResponse _
instance showDescribeStopwordOptionsResponse :: Show DescribeStopwordOptionsResponse where show = genericShow
instance decodeDescribeStopwordOptionsResponse :: Decode DescribeStopwordOptionsResponse where decode = genericDecode options
instance encodeDescribeStopwordOptionsResponse :: Encode DescribeStopwordOptionsResponse where encode = genericEncode options

-- | Constructs DescribeStopwordOptionsResponse from required parameters
newDescribeStopwordOptionsResponse :: StopwordOptionsStatus -> DescribeStopwordOptionsResponse
newDescribeStopwordOptionsResponse _Stopwords = DescribeStopwordOptionsResponse { "Stopwords": _Stopwords }

-- | Constructs DescribeStopwordOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStopwordOptionsResponse' :: StopwordOptionsStatus -> ( { "Stopwords" :: (StopwordOptionsStatus) } -> {"Stopwords" :: (StopwordOptionsStatus) } ) -> DescribeStopwordOptionsResponse
newDescribeStopwordOptionsResponse' _Stopwords customize = (DescribeStopwordOptionsResponse <<< customize) { "Stopwords": _Stopwords }



newtype DescribeSynonymOptionsRequest = DescribeSynonymOptionsRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeSynonymOptionsRequest :: Newtype DescribeSynonymOptionsRequest _
derive instance repGenericDescribeSynonymOptionsRequest :: Generic DescribeSynonymOptionsRequest _
instance showDescribeSynonymOptionsRequest :: Show DescribeSynonymOptionsRequest where show = genericShow
instance decodeDescribeSynonymOptionsRequest :: Decode DescribeSynonymOptionsRequest where decode = genericDecode options
instance encodeDescribeSynonymOptionsRequest :: Encode DescribeSynonymOptionsRequest where encode = genericEncode options

-- | Constructs DescribeSynonymOptionsRequest from required parameters
newDescribeSynonymOptionsRequest :: DomainName -> DescribeSynonymOptionsRequest
newDescribeSynonymOptionsRequest _DomainName = DescribeSynonymOptionsRequest { "DomainName": _DomainName }

-- | Constructs DescribeSynonymOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSynonymOptionsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeSynonymOptionsRequest
newDescribeSynonymOptionsRequest' _DomainName customize = (DescribeSynonymOptionsRequest <<< customize) { "DomainName": _DomainName }



-- | <p>A response message that contains the synonym options for a search domain.</p>
newtype DescribeSynonymOptionsResponse = DescribeSynonymOptionsResponse 
  { "Synonyms" :: (SynonymOptionsStatus)
  }
derive instance newtypeDescribeSynonymOptionsResponse :: Newtype DescribeSynonymOptionsResponse _
derive instance repGenericDescribeSynonymOptionsResponse :: Generic DescribeSynonymOptionsResponse _
instance showDescribeSynonymOptionsResponse :: Show DescribeSynonymOptionsResponse where show = genericShow
instance decodeDescribeSynonymOptionsResponse :: Decode DescribeSynonymOptionsResponse where decode = genericDecode options
instance encodeDescribeSynonymOptionsResponse :: Encode DescribeSynonymOptionsResponse where encode = genericEncode options

-- | Constructs DescribeSynonymOptionsResponse from required parameters
newDescribeSynonymOptionsResponse :: SynonymOptionsStatus -> DescribeSynonymOptionsResponse
newDescribeSynonymOptionsResponse _Synonyms = DescribeSynonymOptionsResponse { "Synonyms": _Synonyms }

-- | Constructs DescribeSynonymOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSynonymOptionsResponse' :: SynonymOptionsStatus -> ( { "Synonyms" :: (SynonymOptionsStatus) } -> {"Synonyms" :: (SynonymOptionsStatus) } ) -> DescribeSynonymOptionsResponse
newDescribeSynonymOptionsResponse' _Synonyms customize = (DescribeSynonymOptionsResponse <<< customize) { "Synonyms": _Synonyms }



-- | <p>The request was rejected because it attempted an operation which is not enabled.</p>
newtype DisabledOperationException = DisabledOperationException Types.NoArguments
derive instance newtypeDisabledOperationException :: Newtype DisabledOperationException _
derive instance repGenericDisabledOperationException :: Generic DisabledOperationException _
instance showDisabledOperationException :: Show DisabledOperationException where show = genericShow
instance decodeDisabledOperationException :: Decode DisabledOperationException where decode = genericDecode options
instance encodeDisabledOperationException :: Encode DisabledOperationException where encode = genericEncode options



newtype DocumentCount = DocumentCount Number
derive instance newtypeDocumentCount :: Newtype DocumentCount _
derive instance repGenericDocumentCount :: Generic DocumentCount _
instance showDocumentCount :: Show DocumentCount where show = genericShow
instance decodeDocumentCount :: Decode DocumentCount where decode = genericDecode options
instance encodeDocumentCount :: Encode DocumentCount where encode = genericEncode options



-- | <p>An internally generated unique identifier for a domain.</p>
newtype DomainId = DomainId String
derive instance newtypeDomainId :: Newtype DomainId _
derive instance repGenericDomainId :: Generic DomainId _
instance showDomainId :: Show DomainId where show = genericShow
instance decodeDomainId :: Decode DomainId where decode = genericDecode options
instance encodeDomainId :: Encode DomainId where encode = genericEncode options



-- | <p>A string that represents the name of a domain. Domain names must be unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen). Uppercase letters and underscores are not allowed.</p>
newtype DomainName = DomainName String
derive instance newtypeDomainName :: Newtype DomainName _
derive instance repGenericDomainName :: Generic DomainName _
instance showDomainName :: Show DomainName where show = genericShow
instance decodeDomainName :: Decode DomainName where decode = genericDecode options
instance encodeDomainName :: Encode DomainName where encode = genericEncode options



-- | <p>A list of domain names.</p>
newtype DomainNameList = DomainNameList (Array DomainName)
derive instance newtypeDomainNameList :: Newtype DomainNameList _
derive instance repGenericDomainNameList :: Generic DomainNameList _
instance showDomainNameList :: Show DomainNameList where show = genericShow
instance decodeDomainNameList :: Decode DomainNameList where decode = genericDecode options
instance encodeDomainNameList :: Encode DomainNameList where encode = genericEncode options



-- | <p>The current status of the search domain.</p>
newtype DomainStatus = DomainStatus 
  { "DomainId" :: (DomainId)
  , "DomainName" :: (DomainName)
  , "Created" :: NullOrUndefined (Boolean)
  , "Deleted" :: NullOrUndefined (Boolean)
  , "NumSearchableDocs" :: NullOrUndefined (DocumentCount)
  , "DocService" :: NullOrUndefined (ServiceEndpoint)
  , "SearchService" :: NullOrUndefined (ServiceEndpoint)
  , "RequiresIndexDocuments" :: (Boolean)
  , "Processing" :: NullOrUndefined (Boolean)
  , "SearchInstanceType" :: NullOrUndefined (SearchInstanceType)
  , "SearchPartitionCount" :: NullOrUndefined (PartitionCount)
  , "SearchInstanceCount" :: NullOrUndefined (InstanceCount)
  }
derive instance newtypeDomainStatus :: Newtype DomainStatus _
derive instance repGenericDomainStatus :: Generic DomainStatus _
instance showDomainStatus :: Show DomainStatus where show = genericShow
instance decodeDomainStatus :: Decode DomainStatus where decode = genericDecode options
instance encodeDomainStatus :: Encode DomainStatus where encode = genericEncode options

-- | Constructs DomainStatus from required parameters
newDomainStatus :: DomainId -> DomainName -> Boolean -> DomainStatus
newDomainStatus _DomainId _DomainName _RequiresIndexDocuments = DomainStatus { "DomainId": _DomainId, "DomainName": _DomainName, "RequiresIndexDocuments": _RequiresIndexDocuments, "Created": (NullOrUndefined Nothing), "Deleted": (NullOrUndefined Nothing), "DocService": (NullOrUndefined Nothing), "NumSearchableDocs": (NullOrUndefined Nothing), "Processing": (NullOrUndefined Nothing), "SearchInstanceCount": (NullOrUndefined Nothing), "SearchInstanceType": (NullOrUndefined Nothing), "SearchPartitionCount": (NullOrUndefined Nothing), "SearchService": (NullOrUndefined Nothing) }

-- | Constructs DomainStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainStatus' :: DomainId -> DomainName -> Boolean -> ( { "DomainId" :: (DomainId) , "DomainName" :: (DomainName) , "Created" :: NullOrUndefined (Boolean) , "Deleted" :: NullOrUndefined (Boolean) , "NumSearchableDocs" :: NullOrUndefined (DocumentCount) , "DocService" :: NullOrUndefined (ServiceEndpoint) , "SearchService" :: NullOrUndefined (ServiceEndpoint) , "RequiresIndexDocuments" :: (Boolean) , "Processing" :: NullOrUndefined (Boolean) , "SearchInstanceType" :: NullOrUndefined (SearchInstanceType) , "SearchPartitionCount" :: NullOrUndefined (PartitionCount) , "SearchInstanceCount" :: NullOrUndefined (InstanceCount) } -> {"DomainId" :: (DomainId) , "DomainName" :: (DomainName) , "Created" :: NullOrUndefined (Boolean) , "Deleted" :: NullOrUndefined (Boolean) , "NumSearchableDocs" :: NullOrUndefined (DocumentCount) , "DocService" :: NullOrUndefined (ServiceEndpoint) , "SearchService" :: NullOrUndefined (ServiceEndpoint) , "RequiresIndexDocuments" :: (Boolean) , "Processing" :: NullOrUndefined (Boolean) , "SearchInstanceType" :: NullOrUndefined (SearchInstanceType) , "SearchPartitionCount" :: NullOrUndefined (PartitionCount) , "SearchInstanceCount" :: NullOrUndefined (InstanceCount) } ) -> DomainStatus
newDomainStatus' _DomainId _DomainName _RequiresIndexDocuments customize = (DomainStatus <<< customize) { "DomainId": _DomainId, "DomainName": _DomainName, "RequiresIndexDocuments": _RequiresIndexDocuments, "Created": (NullOrUndefined Nothing), "Deleted": (NullOrUndefined Nothing), "DocService": (NullOrUndefined Nothing), "NumSearchableDocs": (NullOrUndefined Nothing), "Processing": (NullOrUndefined Nothing), "SearchInstanceCount": (NullOrUndefined Nothing), "SearchInstanceType": (NullOrUndefined Nothing), "SearchPartitionCount": (NullOrUndefined Nothing), "SearchService": (NullOrUndefined Nothing) }



-- | <p>The current status of all of your search domains.</p>
newtype DomainStatusList = DomainStatusList (Array DomainStatus)
derive instance newtypeDomainStatusList :: Newtype DomainStatusList _
derive instance repGenericDomainStatusList :: Generic DomainStatusList _
instance showDomainStatusList :: Show DomainStatusList where show = genericShow
instance decodeDomainStatusList :: Decode DomainStatusList where decode = genericDecode options
instance encodeDomainStatusList :: Encode DomainStatusList where encode = genericEncode options



-- | <p>A machine-parsable string error or warning code.</p>
newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where show = genericShow
instance decodeErrorCode :: Decode ErrorCode where decode = genericDecode options
instance encodeErrorCode :: Encode ErrorCode where encode = genericEncode options



-- | <p>A human-readable string error or warning message.</p>
newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>A string that represents the name of an index field. Field names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Uppercase letters and hyphens are not allowed. The names "body", "docid", and "text_relevance" are reserved and cannot be specified as field or rank expression names.</p>
newtype FieldName = FieldName String
derive instance newtypeFieldName :: Newtype FieldName _
derive instance repGenericFieldName :: Generic FieldName _
instance showFieldName :: Show FieldName where show = genericShow
instance decodeFieldName :: Decode FieldName where decode = genericDecode options
instance encodeFieldName :: Encode FieldName where encode = genericEncode options



newtype FieldNameList = FieldNameList (Array FieldName)
derive instance newtypeFieldNameList :: Newtype FieldNameList _
derive instance repGenericFieldNameList :: Generic FieldNameList _
instance showFieldNameList :: Show FieldNameList where show = genericShow
instance decodeFieldNameList :: Decode FieldNameList where decode = genericDecode options
instance encodeFieldNameList :: Encode FieldNameList where encode = genericEncode options



-- | <p>The value of a field or source document attribute.</p>
newtype FieldValue = FieldValue String
derive instance newtypeFieldValue :: Newtype FieldValue _
derive instance repGenericFieldValue :: Generic FieldValue _
instance showFieldValue :: Show FieldValue where show = genericShow
instance decodeFieldValue :: Decode FieldValue where decode = genericDecode options
instance encodeFieldValue :: Encode FieldValue where encode = genericEncode options



newtype IndexDocumentsRequest = IndexDocumentsRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeIndexDocumentsRequest :: Newtype IndexDocumentsRequest _
derive instance repGenericIndexDocumentsRequest :: Generic IndexDocumentsRequest _
instance showIndexDocumentsRequest :: Show IndexDocumentsRequest where show = genericShow
instance decodeIndexDocumentsRequest :: Decode IndexDocumentsRequest where decode = genericDecode options
instance encodeIndexDocumentsRequest :: Encode IndexDocumentsRequest where encode = genericEncode options

-- | Constructs IndexDocumentsRequest from required parameters
newIndexDocumentsRequest :: DomainName -> IndexDocumentsRequest
newIndexDocumentsRequest _DomainName = IndexDocumentsRequest { "DomainName": _DomainName }

-- | Constructs IndexDocumentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexDocumentsRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> IndexDocumentsRequest
newIndexDocumentsRequest' _DomainName customize = (IndexDocumentsRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The result of an <code>IndexDocuments</code> action.</p>
newtype IndexDocumentsResponse = IndexDocumentsResponse 
  { "FieldNames" :: NullOrUndefined (FieldNameList)
  }
derive instance newtypeIndexDocumentsResponse :: Newtype IndexDocumentsResponse _
derive instance repGenericIndexDocumentsResponse :: Generic IndexDocumentsResponse _
instance showIndexDocumentsResponse :: Show IndexDocumentsResponse where show = genericShow
instance decodeIndexDocumentsResponse :: Decode IndexDocumentsResponse where decode = genericDecode options
instance encodeIndexDocumentsResponse :: Encode IndexDocumentsResponse where encode = genericEncode options

-- | Constructs IndexDocumentsResponse from required parameters
newIndexDocumentsResponse :: IndexDocumentsResponse
newIndexDocumentsResponse  = IndexDocumentsResponse { "FieldNames": (NullOrUndefined Nothing) }

-- | Constructs IndexDocumentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexDocumentsResponse' :: ( { "FieldNames" :: NullOrUndefined (FieldNameList) } -> {"FieldNames" :: NullOrUndefined (FieldNameList) } ) -> IndexDocumentsResponse
newIndexDocumentsResponse'  customize = (IndexDocumentsResponse <<< customize) { "FieldNames": (NullOrUndefined Nothing) }



-- | <p>Defines a field in the index, including its name, type, and the source of its data. The <code>IndexFieldType</code> indicates which of the options will be present. It is invalid to specify options for a type other than the <code>IndexFieldType</code>.</p>
newtype IndexField = IndexField 
  { "IndexFieldName" :: (FieldName)
  , "IndexFieldType" :: (IndexFieldType)
  , "UIntOptions" :: NullOrUndefined (UIntOptions)
  , "LiteralOptions" :: NullOrUndefined (LiteralOptions)
  , "TextOptions" :: NullOrUndefined (TextOptions)
  , "SourceAttributes" :: NullOrUndefined (SourceAttributeList)
  }
derive instance newtypeIndexField :: Newtype IndexField _
derive instance repGenericIndexField :: Generic IndexField _
instance showIndexField :: Show IndexField where show = genericShow
instance decodeIndexField :: Decode IndexField where decode = genericDecode options
instance encodeIndexField :: Encode IndexField where encode = genericEncode options

-- | Constructs IndexField from required parameters
newIndexField :: FieldName -> IndexFieldType -> IndexField
newIndexField _IndexFieldName _IndexFieldType = IndexField { "IndexFieldName": _IndexFieldName, "IndexFieldType": _IndexFieldType, "LiteralOptions": (NullOrUndefined Nothing), "SourceAttributes": (NullOrUndefined Nothing), "TextOptions": (NullOrUndefined Nothing), "UIntOptions": (NullOrUndefined Nothing) }

-- | Constructs IndexField's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexField' :: FieldName -> IndexFieldType -> ( { "IndexFieldName" :: (FieldName) , "IndexFieldType" :: (IndexFieldType) , "UIntOptions" :: NullOrUndefined (UIntOptions) , "LiteralOptions" :: NullOrUndefined (LiteralOptions) , "TextOptions" :: NullOrUndefined (TextOptions) , "SourceAttributes" :: NullOrUndefined (SourceAttributeList) } -> {"IndexFieldName" :: (FieldName) , "IndexFieldType" :: (IndexFieldType) , "UIntOptions" :: NullOrUndefined (UIntOptions) , "LiteralOptions" :: NullOrUndefined (LiteralOptions) , "TextOptions" :: NullOrUndefined (TextOptions) , "SourceAttributes" :: NullOrUndefined (SourceAttributeList) } ) -> IndexField
newIndexField' _IndexFieldName _IndexFieldType customize = (IndexField <<< customize) { "IndexFieldName": _IndexFieldName, "IndexFieldType": _IndexFieldType, "LiteralOptions": (NullOrUndefined Nothing), "SourceAttributes": (NullOrUndefined Nothing), "TextOptions": (NullOrUndefined Nothing), "UIntOptions": (NullOrUndefined Nothing) }



-- | <p>The value of an <code>IndexField</code> and its current status.</p>
newtype IndexFieldStatus = IndexFieldStatus 
  { "Options" :: (IndexField)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeIndexFieldStatus :: Newtype IndexFieldStatus _
derive instance repGenericIndexFieldStatus :: Generic IndexFieldStatus _
instance showIndexFieldStatus :: Show IndexFieldStatus where show = genericShow
instance decodeIndexFieldStatus :: Decode IndexFieldStatus where decode = genericDecode options
instance encodeIndexFieldStatus :: Encode IndexFieldStatus where encode = genericEncode options

-- | Constructs IndexFieldStatus from required parameters
newIndexFieldStatus :: IndexField -> OptionStatus -> IndexFieldStatus
newIndexFieldStatus _Options _Status = IndexFieldStatus { "Options": _Options, "Status": _Status }

-- | Constructs IndexFieldStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexFieldStatus' :: IndexField -> OptionStatus -> ( { "Options" :: (IndexField) , "Status" :: (OptionStatus) } -> {"Options" :: (IndexField) , "Status" :: (OptionStatus) } ) -> IndexFieldStatus
newIndexFieldStatus' _Options _Status customize = (IndexFieldStatus <<< customize) { "Options": _Options, "Status": _Status }



newtype IndexFieldStatusList = IndexFieldStatusList (Array IndexFieldStatus)
derive instance newtypeIndexFieldStatusList :: Newtype IndexFieldStatusList _
derive instance repGenericIndexFieldStatusList :: Generic IndexFieldStatusList _
instance showIndexFieldStatusList :: Show IndexFieldStatusList where show = genericShow
instance decodeIndexFieldStatusList :: Decode IndexFieldStatusList where decode = genericDecode options
instance encodeIndexFieldStatusList :: Encode IndexFieldStatusList where encode = genericEncode options



-- | <p>The type of <code>IndexField</code>.</p>
newtype IndexFieldType = IndexFieldType String
derive instance newtypeIndexFieldType :: Newtype IndexFieldType _
derive instance repGenericIndexFieldType :: Generic IndexFieldType _
instance showIndexFieldType :: Show IndexFieldType where show = genericShow
instance decodeIndexFieldType :: Decode IndexFieldType where decode = genericDecode options
instance encodeIndexFieldType :: Encode IndexFieldType where encode = genericEncode options



newtype InstanceCount = InstanceCount Int
derive instance newtypeInstanceCount :: Newtype InstanceCount _
derive instance repGenericInstanceCount :: Generic InstanceCount _
instance showInstanceCount :: Show InstanceCount where show = genericShow
instance decodeInstanceCount :: Decode InstanceCount where decode = genericDecode options
instance encodeInstanceCount :: Encode InstanceCount where encode = genericEncode options



-- | <p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href="http://status.aws.amazon.com/">Service Health Dashboard</a>.</p>
newtype InternalException = InternalException Types.NoArguments
derive instance newtypeInternalException :: Newtype InternalException _
derive instance repGenericInternalException :: Generic InternalException _
instance showInternalException :: Show InternalException where show = genericShow
instance decodeInternalException :: Decode InternalException where decode = genericDecode options
instance encodeInternalException :: Encode InternalException where encode = genericEncode options



-- | <p>The request was rejected because it specified an invalid type definition.</p>
newtype InvalidTypeException = InvalidTypeException Types.NoArguments
derive instance newtypeInvalidTypeException :: Newtype InvalidTypeException _
derive instance repGenericInvalidTypeException :: Generic InvalidTypeException _
instance showInvalidTypeException :: Show InvalidTypeException where show = genericShow
instance decodeInvalidTypeException :: Decode InvalidTypeException where decode = genericDecode options
instance encodeInvalidTypeException :: Encode InvalidTypeException where encode = genericEncode options



-- | <p>An <a href="http://tools.ietf.org/html/rfc4646">IETF RFC 4646</a> language code. Only the primary language is considered. English (en) is currently the only supported language.</p>
newtype Language = Language String
derive instance newtypeLanguage :: Newtype Language _
derive instance repGenericLanguage :: Generic Language _
instance showLanguage :: Show Language where show = genericShow
instance decodeLanguage :: Decode Language where decode = genericDecode options
instance encodeLanguage :: Encode Language where encode = genericEncode options



-- | <p>The request was rejected because a resource limit has already been met.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



-- | <p>Options that define a literal field in the search index.</p>
newtype LiteralOptions = LiteralOptions 
  { "DefaultValue" :: NullOrUndefined (FieldValue)
  , "SearchEnabled" :: NullOrUndefined (Boolean)
  , "FacetEnabled" :: NullOrUndefined (Boolean)
  , "ResultEnabled" :: NullOrUndefined (Boolean)
  }
derive instance newtypeLiteralOptions :: Newtype LiteralOptions _
derive instance repGenericLiteralOptions :: Generic LiteralOptions _
instance showLiteralOptions :: Show LiteralOptions where show = genericShow
instance decodeLiteralOptions :: Decode LiteralOptions where decode = genericDecode options
instance encodeLiteralOptions :: Encode LiteralOptions where encode = genericEncode options

-- | Constructs LiteralOptions from required parameters
newLiteralOptions :: LiteralOptions
newLiteralOptions  = LiteralOptions { "DefaultValue": (NullOrUndefined Nothing), "FacetEnabled": (NullOrUndefined Nothing), "ResultEnabled": (NullOrUndefined Nothing), "SearchEnabled": (NullOrUndefined Nothing) }

-- | Constructs LiteralOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLiteralOptions' :: ( { "DefaultValue" :: NullOrUndefined (FieldValue) , "SearchEnabled" :: NullOrUndefined (Boolean) , "FacetEnabled" :: NullOrUndefined (Boolean) , "ResultEnabled" :: NullOrUndefined (Boolean) } -> {"DefaultValue" :: NullOrUndefined (FieldValue) , "SearchEnabled" :: NullOrUndefined (Boolean) , "FacetEnabled" :: NullOrUndefined (Boolean) , "ResultEnabled" :: NullOrUndefined (Boolean) } ) -> LiteralOptions
newLiteralOptions'  customize = (LiteralOptions <<< customize) { "DefaultValue": (NullOrUndefined Nothing), "FacetEnabled": (NullOrUndefined Nothing), "ResultEnabled": (NullOrUndefined Nothing), "SearchEnabled": (NullOrUndefined Nothing) }



newtype MultiAZ = MultiAZ Boolean
derive instance newtypeMultiAZ :: Newtype MultiAZ _
derive instance repGenericMultiAZ :: Generic MultiAZ _
instance showMultiAZ :: Show MultiAZ where show = genericShow
instance decodeMultiAZ :: Decode MultiAZ where decode = genericDecode options
instance encodeMultiAZ :: Encode MultiAZ where encode = genericEncode options



-- | <p>A named expression that can be evaluated at search time and used for ranking or thresholding in a search query. </p>
newtype NamedRankExpression = NamedRankExpression 
  { "RankName" :: (FieldName)
  , "RankExpression" :: (RankExpression)
  }
derive instance newtypeNamedRankExpression :: Newtype NamedRankExpression _
derive instance repGenericNamedRankExpression :: Generic NamedRankExpression _
instance showNamedRankExpression :: Show NamedRankExpression where show = genericShow
instance decodeNamedRankExpression :: Decode NamedRankExpression where decode = genericDecode options
instance encodeNamedRankExpression :: Encode NamedRankExpression where encode = genericEncode options

-- | Constructs NamedRankExpression from required parameters
newNamedRankExpression :: RankExpression -> FieldName -> NamedRankExpression
newNamedRankExpression _RankExpression _RankName = NamedRankExpression { "RankExpression": _RankExpression, "RankName": _RankName }

-- | Constructs NamedRankExpression's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamedRankExpression' :: RankExpression -> FieldName -> ( { "RankName" :: (FieldName) , "RankExpression" :: (RankExpression) } -> {"RankName" :: (FieldName) , "RankExpression" :: (RankExpression) } ) -> NamedRankExpression
newNamedRankExpression' _RankExpression _RankName customize = (NamedRankExpression <<< customize) { "RankExpression": _RankExpression, "RankName": _RankName }



-- | <p>The state of processing a change to an option.</p>
newtype OptionState = OptionState String
derive instance newtypeOptionState :: Newtype OptionState _
derive instance repGenericOptionState :: Generic OptionState _
instance showOptionState :: Show OptionState where show = genericShow
instance decodeOptionState :: Decode OptionState where decode = genericDecode options
instance encodeOptionState :: Encode OptionState where encode = genericEncode options



-- | <p>The status of an option, including when it was last updated and whether it is actively in use for searches.</p>
newtype OptionStatus = OptionStatus 
  { "CreationDate" :: (UpdateTimestamp)
  , "UpdateDate" :: (UpdateTimestamp)
  , "UpdateVersion" :: NullOrUndefined (UIntValue)
  , "State" :: (OptionState)
  , "PendingDeletion" :: NullOrUndefined (Boolean)
  }
derive instance newtypeOptionStatus :: Newtype OptionStatus _
derive instance repGenericOptionStatus :: Generic OptionStatus _
instance showOptionStatus :: Show OptionStatus where show = genericShow
instance decodeOptionStatus :: Decode OptionStatus where decode = genericDecode options
instance encodeOptionStatus :: Encode OptionStatus where encode = genericEncode options

-- | Constructs OptionStatus from required parameters
newOptionStatus :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> OptionStatus
newOptionStatus _CreationDate _State _UpdateDate = OptionStatus { "CreationDate": _CreationDate, "State": _State, "UpdateDate": _UpdateDate, "PendingDeletion": (NullOrUndefined Nothing), "UpdateVersion": (NullOrUndefined Nothing) }

-- | Constructs OptionStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptionStatus' :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> ( { "CreationDate" :: (UpdateTimestamp) , "UpdateDate" :: (UpdateTimestamp) , "UpdateVersion" :: NullOrUndefined (UIntValue) , "State" :: (OptionState) , "PendingDeletion" :: NullOrUndefined (Boolean) } -> {"CreationDate" :: (UpdateTimestamp) , "UpdateDate" :: (UpdateTimestamp) , "UpdateVersion" :: NullOrUndefined (UIntValue) , "State" :: (OptionState) , "PendingDeletion" :: NullOrUndefined (Boolean) } ) -> OptionStatus
newOptionStatus' _CreationDate _State _UpdateDate customize = (OptionStatus <<< customize) { "CreationDate": _CreationDate, "State": _State, "UpdateDate": _UpdateDate, "PendingDeletion": (NullOrUndefined Nothing), "UpdateVersion": (NullOrUndefined Nothing) }



newtype PartitionCount = PartitionCount Int
derive instance newtypePartitionCount :: Newtype PartitionCount _
derive instance repGenericPartitionCount :: Generic PartitionCount _
instance showPartitionCount :: Show PartitionCount where show = genericShow
instance decodePartitionCount :: Decode PartitionCount where decode = genericDecode options
instance encodePartitionCount :: Encode PartitionCount where encode = genericEncode options



-- | <p>An IAM access policy as described in <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?AccessPolicyLanguage.html" target="_blank">The Access Policy Language</a> in <i>Using AWS Identity and Access Management</i>. The maximum size of an access policy document is 100 KB.</p> <p>Example: <code>{"Statement": [{"Effect":"Allow", "Action": "*", "Resource": "arn:aws:cs:us-east-1:1234567890:search/movies", "Condition": { "IpAddress": { "aws:SourceIp": ["203.0.113.1/32"] } }}, {"Effect":"Allow", "Action": "*", "Resource": "arn:aws:cs:us-east-1:1234567890:documents/movies", "Condition": { "IpAddress": { "aws:SourceIp": ["203.0.113.1/32"] } }} ] }</code></p>
newtype PolicyDocument = PolicyDocument String
derive instance newtypePolicyDocument :: Newtype PolicyDocument _
derive instance repGenericPolicyDocument :: Generic PolicyDocument _
instance showPolicyDocument :: Show PolicyDocument where show = genericShow
instance decodePolicyDocument :: Decode PolicyDocument where decode = genericDecode options
instance encodePolicyDocument :: Encode PolicyDocument where encode = genericEncode options



-- | <p>The current status of the rank expression.</p>
newtype RankExpression = RankExpression String
derive instance newtypeRankExpression :: Newtype RankExpression _
derive instance repGenericRankExpression :: Generic RankExpression _
instance showRankExpression :: Show RankExpression where show = genericShow
instance decodeRankExpression :: Decode RankExpression where decode = genericDecode options
instance encodeRankExpression :: Encode RankExpression where encode = genericEncode options



-- | <p>The value of a <code>RankExpression</code> and its current status.</p>
newtype RankExpressionStatus = RankExpressionStatus 
  { "Options" :: (NamedRankExpression)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeRankExpressionStatus :: Newtype RankExpressionStatus _
derive instance repGenericRankExpressionStatus :: Generic RankExpressionStatus _
instance showRankExpressionStatus :: Show RankExpressionStatus where show = genericShow
instance decodeRankExpressionStatus :: Decode RankExpressionStatus where decode = genericDecode options
instance encodeRankExpressionStatus :: Encode RankExpressionStatus where encode = genericEncode options

-- | Constructs RankExpressionStatus from required parameters
newRankExpressionStatus :: NamedRankExpression -> OptionStatus -> RankExpressionStatus
newRankExpressionStatus _Options _Status = RankExpressionStatus { "Options": _Options, "Status": _Status }

-- | Constructs RankExpressionStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRankExpressionStatus' :: NamedRankExpression -> OptionStatus -> ( { "Options" :: (NamedRankExpression) , "Status" :: (OptionStatus) } -> {"Options" :: (NamedRankExpression) , "Status" :: (OptionStatus) } ) -> RankExpressionStatus
newRankExpressionStatus' _Options _Status customize = (RankExpressionStatus <<< customize) { "Options": _Options, "Status": _Status }



newtype RankExpressionStatusList = RankExpressionStatusList (Array RankExpressionStatus)
derive instance newtypeRankExpressionStatusList :: Newtype RankExpressionStatusList _
derive instance repGenericRankExpressionStatusList :: Generic RankExpressionStatusList _
instance showRankExpressionStatusList :: Show RankExpressionStatusList where show = genericShow
instance decodeRankExpressionStatusList :: Decode RankExpressionStatusList where decode = genericDecode options
instance encodeRankExpressionStatusList :: Encode RankExpressionStatusList where encode = genericEncode options



-- | <p>The request was rejected because it attempted to reference a resource that does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException Types.NoArguments
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options



newtype SearchInstanceType = SearchInstanceType String
derive instance newtypeSearchInstanceType :: Newtype SearchInstanceType _
derive instance repGenericSearchInstanceType :: Generic SearchInstanceType _
instance showSearchInstanceType :: Show SearchInstanceType where show = genericShow
instance decodeSearchInstanceType :: Decode SearchInstanceType where decode = genericDecode options
instance encodeSearchInstanceType :: Encode SearchInstanceType where encode = genericEncode options



-- | <p>The endpoint to which service requests can be submitted, including the actual URL prefix for sending requests and the Amazon Resource Name (ARN) so the endpoint can be referenced in other API calls such as <a>UpdateServiceAccessPolicies</a>.</p>
newtype ServiceEndpoint = ServiceEndpoint 
  { "Arn" :: NullOrUndefined (Arn)
  , "Endpoint" :: NullOrUndefined (ServiceUrl)
  }
derive instance newtypeServiceEndpoint :: Newtype ServiceEndpoint _
derive instance repGenericServiceEndpoint :: Generic ServiceEndpoint _
instance showServiceEndpoint :: Show ServiceEndpoint where show = genericShow
instance decodeServiceEndpoint :: Decode ServiceEndpoint where decode = genericDecode options
instance encodeServiceEndpoint :: Encode ServiceEndpoint where encode = genericEncode options

-- | Constructs ServiceEndpoint from required parameters
newServiceEndpoint :: ServiceEndpoint
newServiceEndpoint  = ServiceEndpoint { "Arn": (NullOrUndefined Nothing), "Endpoint": (NullOrUndefined Nothing) }

-- | Constructs ServiceEndpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceEndpoint' :: ( { "Arn" :: NullOrUndefined (Arn) , "Endpoint" :: NullOrUndefined (ServiceUrl) } -> {"Arn" :: NullOrUndefined (Arn) , "Endpoint" :: NullOrUndefined (ServiceUrl) } ) -> ServiceEndpoint
newServiceEndpoint'  customize = (ServiceEndpoint <<< customize) { "Arn": (NullOrUndefined Nothing), "Endpoint": (NullOrUndefined Nothing) }



-- | <p>The URL (including /version/pathPrefix) to which service requests can be submitted.</p>
newtype ServiceUrl = ServiceUrl String
derive instance newtypeServiceUrl :: Newtype ServiceUrl _
derive instance repGenericServiceUrl :: Generic ServiceUrl _
instance showServiceUrl :: Show ServiceUrl where show = genericShow
instance decodeServiceUrl :: Decode ServiceUrl where decode = genericDecode options
instance encodeServiceUrl :: Encode ServiceUrl where encode = genericEncode options



-- | <p>Identifies the source data for an index field. An optional data transformation can be applied to the source data when populating the index field. By default, the value of the source attribute is copied to the index field.</p>
newtype SourceAttribute = SourceAttribute 
  { "SourceDataFunction" :: (SourceDataFunction)
  , "SourceDataCopy" :: NullOrUndefined (SourceData)
  , "SourceDataTrimTitle" :: NullOrUndefined (SourceDataTrimTitle)
  , "SourceDataMap" :: NullOrUndefined (SourceDataMap)
  }
derive instance newtypeSourceAttribute :: Newtype SourceAttribute _
derive instance repGenericSourceAttribute :: Generic SourceAttribute _
instance showSourceAttribute :: Show SourceAttribute where show = genericShow
instance decodeSourceAttribute :: Decode SourceAttribute where decode = genericDecode options
instance encodeSourceAttribute :: Encode SourceAttribute where encode = genericEncode options

-- | Constructs SourceAttribute from required parameters
newSourceAttribute :: SourceDataFunction -> SourceAttribute
newSourceAttribute _SourceDataFunction = SourceAttribute { "SourceDataFunction": _SourceDataFunction, "SourceDataCopy": (NullOrUndefined Nothing), "SourceDataMap": (NullOrUndefined Nothing), "SourceDataTrimTitle": (NullOrUndefined Nothing) }

-- | Constructs SourceAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceAttribute' :: SourceDataFunction -> ( { "SourceDataFunction" :: (SourceDataFunction) , "SourceDataCopy" :: NullOrUndefined (SourceData) , "SourceDataTrimTitle" :: NullOrUndefined (SourceDataTrimTitle) , "SourceDataMap" :: NullOrUndefined (SourceDataMap) } -> {"SourceDataFunction" :: (SourceDataFunction) , "SourceDataCopy" :: NullOrUndefined (SourceData) , "SourceDataTrimTitle" :: NullOrUndefined (SourceDataTrimTitle) , "SourceDataMap" :: NullOrUndefined (SourceDataMap) } ) -> SourceAttribute
newSourceAttribute' _SourceDataFunction customize = (SourceAttribute <<< customize) { "SourceDataFunction": _SourceDataFunction, "SourceDataCopy": (NullOrUndefined Nothing), "SourceDataMap": (NullOrUndefined Nothing), "SourceDataTrimTitle": (NullOrUndefined Nothing) }



newtype SourceAttributeList = SourceAttributeList (Array SourceAttribute)
derive instance newtypeSourceAttributeList :: Newtype SourceAttributeList _
derive instance repGenericSourceAttributeList :: Generic SourceAttributeList _
instance showSourceAttributeList :: Show SourceAttributeList where show = genericShow
instance decodeSourceAttributeList :: Decode SourceAttributeList where decode = genericDecode options
instance encodeSourceAttributeList :: Encode SourceAttributeList where encode = genericEncode options



-- | <p>The source attribute name and an optional default value to use if a document doesn't have an attribute of that name.</p>
newtype SourceData = SourceData 
  { "SourceName" :: (FieldName)
  , "DefaultValue" :: NullOrUndefined (FieldValue)
  }
derive instance newtypeSourceData :: Newtype SourceData _
derive instance repGenericSourceData :: Generic SourceData _
instance showSourceData :: Show SourceData where show = genericShow
instance decodeSourceData :: Decode SourceData where decode = genericDecode options
instance encodeSourceData :: Encode SourceData where encode = genericEncode options

-- | Constructs SourceData from required parameters
newSourceData :: FieldName -> SourceData
newSourceData _SourceName = SourceData { "SourceName": _SourceName, "DefaultValue": (NullOrUndefined Nothing) }

-- | Constructs SourceData's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceData' :: FieldName -> ( { "SourceName" :: (FieldName) , "DefaultValue" :: NullOrUndefined (FieldValue) } -> {"SourceName" :: (FieldName) , "DefaultValue" :: NullOrUndefined (FieldValue) } ) -> SourceData
newSourceData' _SourceName customize = (SourceData <<< customize) { "SourceName": _SourceName, "DefaultValue": (NullOrUndefined Nothing) }



newtype SourceDataFunction = SourceDataFunction String
derive instance newtypeSourceDataFunction :: Newtype SourceDataFunction _
derive instance repGenericSourceDataFunction :: Generic SourceDataFunction _
instance showSourceDataFunction :: Show SourceDataFunction where show = genericShow
instance decodeSourceDataFunction :: Decode SourceDataFunction where decode = genericDecode options
instance encodeSourceDataFunction :: Encode SourceDataFunction where encode = genericEncode options



-- | <p>Specifies how to map source attribute values to custom values when populating an <code>IndexField</code>.</p>
newtype SourceDataMap = SourceDataMap 
  { "SourceName" :: (FieldName)
  , "DefaultValue" :: NullOrUndefined (FieldValue)
  , "Cases" :: NullOrUndefined (StringCaseMap)
  }
derive instance newtypeSourceDataMap :: Newtype SourceDataMap _
derive instance repGenericSourceDataMap :: Generic SourceDataMap _
instance showSourceDataMap :: Show SourceDataMap where show = genericShow
instance decodeSourceDataMap :: Decode SourceDataMap where decode = genericDecode options
instance encodeSourceDataMap :: Encode SourceDataMap where encode = genericEncode options

-- | Constructs SourceDataMap from required parameters
newSourceDataMap :: FieldName -> SourceDataMap
newSourceDataMap _SourceName = SourceDataMap { "SourceName": _SourceName, "Cases": (NullOrUndefined Nothing), "DefaultValue": (NullOrUndefined Nothing) }

-- | Constructs SourceDataMap's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceDataMap' :: FieldName -> ( { "SourceName" :: (FieldName) , "DefaultValue" :: NullOrUndefined (FieldValue) , "Cases" :: NullOrUndefined (StringCaseMap) } -> {"SourceName" :: (FieldName) , "DefaultValue" :: NullOrUndefined (FieldValue) , "Cases" :: NullOrUndefined (StringCaseMap) } ) -> SourceDataMap
newSourceDataMap' _SourceName customize = (SourceDataMap <<< customize) { "SourceName": _SourceName, "Cases": (NullOrUndefined Nothing), "DefaultValue": (NullOrUndefined Nothing) }



-- | <p>Specifies how to trim common words from the beginning of a field to enable title sorting by that field.</p>
newtype SourceDataTrimTitle = SourceDataTrimTitle 
  { "SourceName" :: (FieldName)
  , "DefaultValue" :: NullOrUndefined (FieldValue)
  , "Separator" :: NullOrUndefined (String)
  , "Language" :: NullOrUndefined (Language)
  }
derive instance newtypeSourceDataTrimTitle :: Newtype SourceDataTrimTitle _
derive instance repGenericSourceDataTrimTitle :: Generic SourceDataTrimTitle _
instance showSourceDataTrimTitle :: Show SourceDataTrimTitle where show = genericShow
instance decodeSourceDataTrimTitle :: Decode SourceDataTrimTitle where decode = genericDecode options
instance encodeSourceDataTrimTitle :: Encode SourceDataTrimTitle where encode = genericEncode options

-- | Constructs SourceDataTrimTitle from required parameters
newSourceDataTrimTitle :: FieldName -> SourceDataTrimTitle
newSourceDataTrimTitle _SourceName = SourceDataTrimTitle { "SourceName": _SourceName, "DefaultValue": (NullOrUndefined Nothing), "Language": (NullOrUndefined Nothing), "Separator": (NullOrUndefined Nothing) }

-- | Constructs SourceDataTrimTitle's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceDataTrimTitle' :: FieldName -> ( { "SourceName" :: (FieldName) , "DefaultValue" :: NullOrUndefined (FieldValue) , "Separator" :: NullOrUndefined (String) , "Language" :: NullOrUndefined (Language) } -> {"SourceName" :: (FieldName) , "DefaultValue" :: NullOrUndefined (FieldValue) , "Separator" :: NullOrUndefined (String) , "Language" :: NullOrUndefined (Language) } ) -> SourceDataTrimTitle
newSourceDataTrimTitle' _SourceName customize = (SourceDataTrimTitle <<< customize) { "SourceName": _SourceName, "DefaultValue": (NullOrUndefined Nothing), "Language": (NullOrUndefined Nothing), "Separator": (NullOrUndefined Nothing) }



-- | <p>The stemming options configured for this search domain and the current status of those options.</p>
newtype StemmingOptionsStatus = StemmingOptionsStatus 
  { "Options" :: (StemsDocument)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeStemmingOptionsStatus :: Newtype StemmingOptionsStatus _
derive instance repGenericStemmingOptionsStatus :: Generic StemmingOptionsStatus _
instance showStemmingOptionsStatus :: Show StemmingOptionsStatus where show = genericShow
instance decodeStemmingOptionsStatus :: Decode StemmingOptionsStatus where decode = genericDecode options
instance encodeStemmingOptionsStatus :: Encode StemmingOptionsStatus where encode = genericEncode options

-- | Constructs StemmingOptionsStatus from required parameters
newStemmingOptionsStatus :: StemsDocument -> OptionStatus -> StemmingOptionsStatus
newStemmingOptionsStatus _Options _Status = StemmingOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs StemmingOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStemmingOptionsStatus' :: StemsDocument -> OptionStatus -> ( { "Options" :: (StemsDocument) , "Status" :: (OptionStatus) } -> {"Options" :: (StemsDocument) , "Status" :: (OptionStatus) } ) -> StemmingOptionsStatus
newStemmingOptionsStatus' _Options _Status customize = (StemmingOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>Maps terms to their stems, serialized as a JSON document. The document has a single object with one property "stems" whose value is an object mapping terms to their stems. The maximum size of a stemming document is 500 KB. Example: <code>{ "stems": {"people": "person", "walking": "walk"} }</code></p>
newtype StemsDocument = StemsDocument String
derive instance newtypeStemsDocument :: Newtype StemsDocument _
derive instance repGenericStemsDocument :: Generic StemsDocument _
instance showStemsDocument :: Show StemsDocument where show = genericShow
instance decodeStemsDocument :: Decode StemsDocument where decode = genericDecode options
instance encodeStemsDocument :: Encode StemsDocument where encode = genericEncode options



-- | <p>The stopword options configured for this search domain and the current status of those options.</p>
newtype StopwordOptionsStatus = StopwordOptionsStatus 
  { "Options" :: (StopwordsDocument)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeStopwordOptionsStatus :: Newtype StopwordOptionsStatus _
derive instance repGenericStopwordOptionsStatus :: Generic StopwordOptionsStatus _
instance showStopwordOptionsStatus :: Show StopwordOptionsStatus where show = genericShow
instance decodeStopwordOptionsStatus :: Decode StopwordOptionsStatus where decode = genericDecode options
instance encodeStopwordOptionsStatus :: Encode StopwordOptionsStatus where encode = genericEncode options

-- | Constructs StopwordOptionsStatus from required parameters
newStopwordOptionsStatus :: StopwordsDocument -> OptionStatus -> StopwordOptionsStatus
newStopwordOptionsStatus _Options _Status = StopwordOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs StopwordOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopwordOptionsStatus' :: StopwordsDocument -> OptionStatus -> ( { "Options" :: (StopwordsDocument) , "Status" :: (OptionStatus) } -> {"Options" :: (StopwordsDocument) , "Status" :: (OptionStatus) } ) -> StopwordOptionsStatus
newStopwordOptionsStatus' _Options _Status customize = (StopwordOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>Lists stopwords serialized as a JSON document. The document has a single object with one property "stopwords" whose value is an array of strings. The maximum size of a stopwords document is 10 KB. Example: <code>{ "stopwords": ["a", "an", "the", "of"] }</code></p>
newtype StopwordsDocument = StopwordsDocument String
derive instance newtypeStopwordsDocument :: Newtype StopwordsDocument _
derive instance repGenericStopwordsDocument :: Generic StopwordsDocument _
instance showStopwordsDocument :: Show StopwordsDocument where show = genericShow
instance decodeStopwordsDocument :: Decode StopwordsDocument where decode = genericDecode options
instance encodeStopwordsDocument :: Encode StopwordsDocument where encode = genericEncode options



newtype StringCaseMap = StringCaseMap (StrMap.StrMap FieldValue)
derive instance newtypeStringCaseMap :: Newtype StringCaseMap _
derive instance repGenericStringCaseMap :: Generic StringCaseMap _
instance showStringCaseMap :: Show StringCaseMap where show = genericShow
instance decodeStringCaseMap :: Decode StringCaseMap where decode = genericDecode options
instance encodeStringCaseMap :: Encode StringCaseMap where encode = genericEncode options



-- | <p>The synonym options configured for this search domain and the current status of those options.</p>
newtype SynonymOptionsStatus = SynonymOptionsStatus 
  { "Options" :: (SynonymsDocument)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeSynonymOptionsStatus :: Newtype SynonymOptionsStatus _
derive instance repGenericSynonymOptionsStatus :: Generic SynonymOptionsStatus _
instance showSynonymOptionsStatus :: Show SynonymOptionsStatus where show = genericShow
instance decodeSynonymOptionsStatus :: Decode SynonymOptionsStatus where decode = genericDecode options
instance encodeSynonymOptionsStatus :: Encode SynonymOptionsStatus where encode = genericEncode options

-- | Constructs SynonymOptionsStatus from required parameters
newSynonymOptionsStatus :: SynonymsDocument -> OptionStatus -> SynonymOptionsStatus
newSynonymOptionsStatus _Options _Status = SynonymOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs SynonymOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSynonymOptionsStatus' :: SynonymsDocument -> OptionStatus -> ( { "Options" :: (SynonymsDocument) , "Status" :: (OptionStatus) } -> {"Options" :: (SynonymsDocument) , "Status" :: (OptionStatus) } ) -> SynonymOptionsStatus
newSynonymOptionsStatus' _Options _Status customize = (SynonymOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>Maps terms to their synonyms, serialized as a JSON document. The document has a single object with one property "synonyms" whose value is an object mapping terms to their synonyms. Each synonym is a simple string or an array of strings. The maximum size of a stopwords document is 100 KB. Example: <code>{ "synonyms": {"cat": ["feline", "kitten"], "puppy": "dog"} }</code></p>
newtype SynonymsDocument = SynonymsDocument String
derive instance newtypeSynonymsDocument :: Newtype SynonymsDocument _
derive instance repGenericSynonymsDocument :: Generic SynonymsDocument _
instance showSynonymsDocument :: Show SynonymsDocument where show = genericShow
instance decodeSynonymsDocument :: Decode SynonymsDocument where decode = genericDecode options
instance encodeSynonymsDocument :: Encode SynonymsDocument where encode = genericEncode options



-- | <p>Options that define a text field in the search index.</p>
newtype TextOptions = TextOptions 
  { "DefaultValue" :: NullOrUndefined (FieldValue)
  , "FacetEnabled" :: NullOrUndefined (Boolean)
  , "ResultEnabled" :: NullOrUndefined (Boolean)
  , "TextProcessor" :: NullOrUndefined (FieldName)
  }
derive instance newtypeTextOptions :: Newtype TextOptions _
derive instance repGenericTextOptions :: Generic TextOptions _
instance showTextOptions :: Show TextOptions where show = genericShow
instance decodeTextOptions :: Decode TextOptions where decode = genericDecode options
instance encodeTextOptions :: Encode TextOptions where encode = genericEncode options

-- | Constructs TextOptions from required parameters
newTextOptions :: TextOptions
newTextOptions  = TextOptions { "DefaultValue": (NullOrUndefined Nothing), "FacetEnabled": (NullOrUndefined Nothing), "ResultEnabled": (NullOrUndefined Nothing), "TextProcessor": (NullOrUndefined Nothing) }

-- | Constructs TextOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTextOptions' :: ( { "DefaultValue" :: NullOrUndefined (FieldValue) , "FacetEnabled" :: NullOrUndefined (Boolean) , "ResultEnabled" :: NullOrUndefined (Boolean) , "TextProcessor" :: NullOrUndefined (FieldName) } -> {"DefaultValue" :: NullOrUndefined (FieldValue) , "FacetEnabled" :: NullOrUndefined (Boolean) , "ResultEnabled" :: NullOrUndefined (Boolean) , "TextProcessor" :: NullOrUndefined (FieldName) } ) -> TextOptions
newTextOptions'  customize = (TextOptions <<< customize) { "DefaultValue": (NullOrUndefined Nothing), "FacetEnabled": (NullOrUndefined Nothing), "ResultEnabled": (NullOrUndefined Nothing), "TextProcessor": (NullOrUndefined Nothing) }



-- | <p>Options that define a <code>uint</code> field in the search index.</p>
newtype UIntOptions = UIntOptions 
  { "DefaultValue" :: NullOrUndefined (UIntValue)
  }
derive instance newtypeUIntOptions :: Newtype UIntOptions _
derive instance repGenericUIntOptions :: Generic UIntOptions _
instance showUIntOptions :: Show UIntOptions where show = genericShow
instance decodeUIntOptions :: Decode UIntOptions where decode = genericDecode options
instance encodeUIntOptions :: Encode UIntOptions where encode = genericEncode options

-- | Constructs UIntOptions from required parameters
newUIntOptions :: UIntOptions
newUIntOptions  = UIntOptions { "DefaultValue": (NullOrUndefined Nothing) }

-- | Constructs UIntOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUIntOptions' :: ( { "DefaultValue" :: NullOrUndefined (UIntValue) } -> {"DefaultValue" :: NullOrUndefined (UIntValue) } ) -> UIntOptions
newUIntOptions'  customize = (UIntOptions <<< customize) { "DefaultValue": (NullOrUndefined Nothing) }



newtype UIntValue = UIntValue Int
derive instance newtypeUIntValue :: Newtype UIntValue _
derive instance repGenericUIntValue :: Generic UIntValue _
instance showUIntValue :: Show UIntValue where show = genericShow
instance decodeUIntValue :: Decode UIntValue where decode = genericDecode options
instance encodeUIntValue :: Encode UIntValue where encode = genericEncode options



-- | <p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>
newtype UpdateAvailabilityOptionsRequest = UpdateAvailabilityOptionsRequest 
  { "DomainName" :: (DomainName)
  , "MultiAZ" :: (Boolean)
  }
derive instance newtypeUpdateAvailabilityOptionsRequest :: Newtype UpdateAvailabilityOptionsRequest _
derive instance repGenericUpdateAvailabilityOptionsRequest :: Generic UpdateAvailabilityOptionsRequest _
instance showUpdateAvailabilityOptionsRequest :: Show UpdateAvailabilityOptionsRequest where show = genericShow
instance decodeUpdateAvailabilityOptionsRequest :: Decode UpdateAvailabilityOptionsRequest where decode = genericDecode options
instance encodeUpdateAvailabilityOptionsRequest :: Encode UpdateAvailabilityOptionsRequest where encode = genericEncode options

-- | Constructs UpdateAvailabilityOptionsRequest from required parameters
newUpdateAvailabilityOptionsRequest :: DomainName -> Boolean -> UpdateAvailabilityOptionsRequest
newUpdateAvailabilityOptionsRequest _DomainName _MultiAZ = UpdateAvailabilityOptionsRequest { "DomainName": _DomainName, "MultiAZ": _MultiAZ }

-- | Constructs UpdateAvailabilityOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAvailabilityOptionsRequest' :: DomainName -> Boolean -> ( { "DomainName" :: (DomainName) , "MultiAZ" :: (Boolean) } -> {"DomainName" :: (DomainName) , "MultiAZ" :: (Boolean) } ) -> UpdateAvailabilityOptionsRequest
newUpdateAvailabilityOptionsRequest' _DomainName _MultiAZ customize = (UpdateAvailabilityOptionsRequest <<< customize) { "DomainName": _DomainName, "MultiAZ": _MultiAZ }



-- | <p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>
newtype UpdateAvailabilityOptionsResponse = UpdateAvailabilityOptionsResponse 
  { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus)
  }
derive instance newtypeUpdateAvailabilityOptionsResponse :: Newtype UpdateAvailabilityOptionsResponse _
derive instance repGenericUpdateAvailabilityOptionsResponse :: Generic UpdateAvailabilityOptionsResponse _
instance showUpdateAvailabilityOptionsResponse :: Show UpdateAvailabilityOptionsResponse where show = genericShow
instance decodeUpdateAvailabilityOptionsResponse :: Decode UpdateAvailabilityOptionsResponse where decode = genericDecode options
instance encodeUpdateAvailabilityOptionsResponse :: Encode UpdateAvailabilityOptionsResponse where encode = genericEncode options

-- | Constructs UpdateAvailabilityOptionsResponse from required parameters
newUpdateAvailabilityOptionsResponse :: UpdateAvailabilityOptionsResponse
newUpdateAvailabilityOptionsResponse  = UpdateAvailabilityOptionsResponse { "AvailabilityOptions": (NullOrUndefined Nothing) }

-- | Constructs UpdateAvailabilityOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAvailabilityOptionsResponse' :: ( { "AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) } -> {"AvailabilityOptions" :: NullOrUndefined (AvailabilityOptionsStatus) } ) -> UpdateAvailabilityOptionsResponse
newUpdateAvailabilityOptionsResponse'  customize = (UpdateAvailabilityOptionsResponse <<< customize) { "AvailabilityOptions": (NullOrUndefined Nothing) }



newtype UpdateDefaultSearchFieldRequest = UpdateDefaultSearchFieldRequest 
  { "DomainName" :: (DomainName)
  , "DefaultSearchField" :: (String)
  }
derive instance newtypeUpdateDefaultSearchFieldRequest :: Newtype UpdateDefaultSearchFieldRequest _
derive instance repGenericUpdateDefaultSearchFieldRequest :: Generic UpdateDefaultSearchFieldRequest _
instance showUpdateDefaultSearchFieldRequest :: Show UpdateDefaultSearchFieldRequest where show = genericShow
instance decodeUpdateDefaultSearchFieldRequest :: Decode UpdateDefaultSearchFieldRequest where decode = genericDecode options
instance encodeUpdateDefaultSearchFieldRequest :: Encode UpdateDefaultSearchFieldRequest where encode = genericEncode options

-- | Constructs UpdateDefaultSearchFieldRequest from required parameters
newUpdateDefaultSearchFieldRequest :: String -> DomainName -> UpdateDefaultSearchFieldRequest
newUpdateDefaultSearchFieldRequest _DefaultSearchField _DomainName = UpdateDefaultSearchFieldRequest { "DefaultSearchField": _DefaultSearchField, "DomainName": _DomainName }

-- | Constructs UpdateDefaultSearchFieldRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDefaultSearchFieldRequest' :: String -> DomainName -> ( { "DomainName" :: (DomainName) , "DefaultSearchField" :: (String) } -> {"DomainName" :: (DomainName) , "DefaultSearchField" :: (String) } ) -> UpdateDefaultSearchFieldRequest
newUpdateDefaultSearchFieldRequest' _DefaultSearchField _DomainName customize = (UpdateDefaultSearchFieldRequest <<< customize) { "DefaultSearchField": _DefaultSearchField, "DomainName": _DomainName }



-- | <p>A response message that contains the status of an updated default search field.</p>
newtype UpdateDefaultSearchFieldResponse = UpdateDefaultSearchFieldResponse 
  { "DefaultSearchField" :: (DefaultSearchFieldStatus)
  }
derive instance newtypeUpdateDefaultSearchFieldResponse :: Newtype UpdateDefaultSearchFieldResponse _
derive instance repGenericUpdateDefaultSearchFieldResponse :: Generic UpdateDefaultSearchFieldResponse _
instance showUpdateDefaultSearchFieldResponse :: Show UpdateDefaultSearchFieldResponse where show = genericShow
instance decodeUpdateDefaultSearchFieldResponse :: Decode UpdateDefaultSearchFieldResponse where decode = genericDecode options
instance encodeUpdateDefaultSearchFieldResponse :: Encode UpdateDefaultSearchFieldResponse where encode = genericEncode options

-- | Constructs UpdateDefaultSearchFieldResponse from required parameters
newUpdateDefaultSearchFieldResponse :: DefaultSearchFieldStatus -> UpdateDefaultSearchFieldResponse
newUpdateDefaultSearchFieldResponse _DefaultSearchField = UpdateDefaultSearchFieldResponse { "DefaultSearchField": _DefaultSearchField }

-- | Constructs UpdateDefaultSearchFieldResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDefaultSearchFieldResponse' :: DefaultSearchFieldStatus -> ( { "DefaultSearchField" :: (DefaultSearchFieldStatus) } -> {"DefaultSearchField" :: (DefaultSearchFieldStatus) } ) -> UpdateDefaultSearchFieldResponse
newUpdateDefaultSearchFieldResponse' _DefaultSearchField customize = (UpdateDefaultSearchFieldResponse <<< customize) { "DefaultSearchField": _DefaultSearchField }



newtype UpdateServiceAccessPoliciesRequest = UpdateServiceAccessPoliciesRequest 
  { "DomainName" :: (DomainName)
  , "AccessPolicies" :: (PolicyDocument)
  }
derive instance newtypeUpdateServiceAccessPoliciesRequest :: Newtype UpdateServiceAccessPoliciesRequest _
derive instance repGenericUpdateServiceAccessPoliciesRequest :: Generic UpdateServiceAccessPoliciesRequest _
instance showUpdateServiceAccessPoliciesRequest :: Show UpdateServiceAccessPoliciesRequest where show = genericShow
instance decodeUpdateServiceAccessPoliciesRequest :: Decode UpdateServiceAccessPoliciesRequest where decode = genericDecode options
instance encodeUpdateServiceAccessPoliciesRequest :: Encode UpdateServiceAccessPoliciesRequest where encode = genericEncode options

-- | Constructs UpdateServiceAccessPoliciesRequest from required parameters
newUpdateServiceAccessPoliciesRequest :: PolicyDocument -> DomainName -> UpdateServiceAccessPoliciesRequest
newUpdateServiceAccessPoliciesRequest _AccessPolicies _DomainName = UpdateServiceAccessPoliciesRequest { "AccessPolicies": _AccessPolicies, "DomainName": _DomainName }

-- | Constructs UpdateServiceAccessPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceAccessPoliciesRequest' :: PolicyDocument -> DomainName -> ( { "DomainName" :: (DomainName) , "AccessPolicies" :: (PolicyDocument) } -> {"DomainName" :: (DomainName) , "AccessPolicies" :: (PolicyDocument) } ) -> UpdateServiceAccessPoliciesRequest
newUpdateServiceAccessPoliciesRequest' _AccessPolicies _DomainName customize = (UpdateServiceAccessPoliciesRequest <<< customize) { "AccessPolicies": _AccessPolicies, "DomainName": _DomainName }



-- | <p>A response message that contains the status of updated access policies.</p>
newtype UpdateServiceAccessPoliciesResponse = UpdateServiceAccessPoliciesResponse 
  { "AccessPolicies" :: (AccessPoliciesStatus)
  }
derive instance newtypeUpdateServiceAccessPoliciesResponse :: Newtype UpdateServiceAccessPoliciesResponse _
derive instance repGenericUpdateServiceAccessPoliciesResponse :: Generic UpdateServiceAccessPoliciesResponse _
instance showUpdateServiceAccessPoliciesResponse :: Show UpdateServiceAccessPoliciesResponse where show = genericShow
instance decodeUpdateServiceAccessPoliciesResponse :: Decode UpdateServiceAccessPoliciesResponse where decode = genericDecode options
instance encodeUpdateServiceAccessPoliciesResponse :: Encode UpdateServiceAccessPoliciesResponse where encode = genericEncode options

-- | Constructs UpdateServiceAccessPoliciesResponse from required parameters
newUpdateServiceAccessPoliciesResponse :: AccessPoliciesStatus -> UpdateServiceAccessPoliciesResponse
newUpdateServiceAccessPoliciesResponse _AccessPolicies = UpdateServiceAccessPoliciesResponse { "AccessPolicies": _AccessPolicies }

-- | Constructs UpdateServiceAccessPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceAccessPoliciesResponse' :: AccessPoliciesStatus -> ( { "AccessPolicies" :: (AccessPoliciesStatus) } -> {"AccessPolicies" :: (AccessPoliciesStatus) } ) -> UpdateServiceAccessPoliciesResponse
newUpdateServiceAccessPoliciesResponse' _AccessPolicies customize = (UpdateServiceAccessPoliciesResponse <<< customize) { "AccessPolicies": _AccessPolicies }



newtype UpdateStemmingOptionsRequest = UpdateStemmingOptionsRequest 
  { "DomainName" :: (DomainName)
  , "Stems" :: (StemsDocument)
  }
derive instance newtypeUpdateStemmingOptionsRequest :: Newtype UpdateStemmingOptionsRequest _
derive instance repGenericUpdateStemmingOptionsRequest :: Generic UpdateStemmingOptionsRequest _
instance showUpdateStemmingOptionsRequest :: Show UpdateStemmingOptionsRequest where show = genericShow
instance decodeUpdateStemmingOptionsRequest :: Decode UpdateStemmingOptionsRequest where decode = genericDecode options
instance encodeUpdateStemmingOptionsRequest :: Encode UpdateStemmingOptionsRequest where encode = genericEncode options

-- | Constructs UpdateStemmingOptionsRequest from required parameters
newUpdateStemmingOptionsRequest :: DomainName -> StemsDocument -> UpdateStemmingOptionsRequest
newUpdateStemmingOptionsRequest _DomainName _Stems = UpdateStemmingOptionsRequest { "DomainName": _DomainName, "Stems": _Stems }

-- | Constructs UpdateStemmingOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStemmingOptionsRequest' :: DomainName -> StemsDocument -> ( { "DomainName" :: (DomainName) , "Stems" :: (StemsDocument) } -> {"DomainName" :: (DomainName) , "Stems" :: (StemsDocument) } ) -> UpdateStemmingOptionsRequest
newUpdateStemmingOptionsRequest' _DomainName _Stems customize = (UpdateStemmingOptionsRequest <<< customize) { "DomainName": _DomainName, "Stems": _Stems }



-- | <p>A response message that contains the status of updated stemming options.</p>
newtype UpdateStemmingOptionsResponse = UpdateStemmingOptionsResponse 
  { "Stems" :: (StemmingOptionsStatus)
  }
derive instance newtypeUpdateStemmingOptionsResponse :: Newtype UpdateStemmingOptionsResponse _
derive instance repGenericUpdateStemmingOptionsResponse :: Generic UpdateStemmingOptionsResponse _
instance showUpdateStemmingOptionsResponse :: Show UpdateStemmingOptionsResponse where show = genericShow
instance decodeUpdateStemmingOptionsResponse :: Decode UpdateStemmingOptionsResponse where decode = genericDecode options
instance encodeUpdateStemmingOptionsResponse :: Encode UpdateStemmingOptionsResponse where encode = genericEncode options

-- | Constructs UpdateStemmingOptionsResponse from required parameters
newUpdateStemmingOptionsResponse :: StemmingOptionsStatus -> UpdateStemmingOptionsResponse
newUpdateStemmingOptionsResponse _Stems = UpdateStemmingOptionsResponse { "Stems": _Stems }

-- | Constructs UpdateStemmingOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStemmingOptionsResponse' :: StemmingOptionsStatus -> ( { "Stems" :: (StemmingOptionsStatus) } -> {"Stems" :: (StemmingOptionsStatus) } ) -> UpdateStemmingOptionsResponse
newUpdateStemmingOptionsResponse' _Stems customize = (UpdateStemmingOptionsResponse <<< customize) { "Stems": _Stems }



newtype UpdateStopwordOptionsRequest = UpdateStopwordOptionsRequest 
  { "DomainName" :: (DomainName)
  , "Stopwords" :: (StopwordsDocument)
  }
derive instance newtypeUpdateStopwordOptionsRequest :: Newtype UpdateStopwordOptionsRequest _
derive instance repGenericUpdateStopwordOptionsRequest :: Generic UpdateStopwordOptionsRequest _
instance showUpdateStopwordOptionsRequest :: Show UpdateStopwordOptionsRequest where show = genericShow
instance decodeUpdateStopwordOptionsRequest :: Decode UpdateStopwordOptionsRequest where decode = genericDecode options
instance encodeUpdateStopwordOptionsRequest :: Encode UpdateStopwordOptionsRequest where encode = genericEncode options

-- | Constructs UpdateStopwordOptionsRequest from required parameters
newUpdateStopwordOptionsRequest :: DomainName -> StopwordsDocument -> UpdateStopwordOptionsRequest
newUpdateStopwordOptionsRequest _DomainName _Stopwords = UpdateStopwordOptionsRequest { "DomainName": _DomainName, "Stopwords": _Stopwords }

-- | Constructs UpdateStopwordOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStopwordOptionsRequest' :: DomainName -> StopwordsDocument -> ( { "DomainName" :: (DomainName) , "Stopwords" :: (StopwordsDocument) } -> {"DomainName" :: (DomainName) , "Stopwords" :: (StopwordsDocument) } ) -> UpdateStopwordOptionsRequest
newUpdateStopwordOptionsRequest' _DomainName _Stopwords customize = (UpdateStopwordOptionsRequest <<< customize) { "DomainName": _DomainName, "Stopwords": _Stopwords }



-- | <p>A response message that contains the status of updated stopword options.</p>
newtype UpdateStopwordOptionsResponse = UpdateStopwordOptionsResponse 
  { "Stopwords" :: (StopwordOptionsStatus)
  }
derive instance newtypeUpdateStopwordOptionsResponse :: Newtype UpdateStopwordOptionsResponse _
derive instance repGenericUpdateStopwordOptionsResponse :: Generic UpdateStopwordOptionsResponse _
instance showUpdateStopwordOptionsResponse :: Show UpdateStopwordOptionsResponse where show = genericShow
instance decodeUpdateStopwordOptionsResponse :: Decode UpdateStopwordOptionsResponse where decode = genericDecode options
instance encodeUpdateStopwordOptionsResponse :: Encode UpdateStopwordOptionsResponse where encode = genericEncode options

-- | Constructs UpdateStopwordOptionsResponse from required parameters
newUpdateStopwordOptionsResponse :: StopwordOptionsStatus -> UpdateStopwordOptionsResponse
newUpdateStopwordOptionsResponse _Stopwords = UpdateStopwordOptionsResponse { "Stopwords": _Stopwords }

-- | Constructs UpdateStopwordOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStopwordOptionsResponse' :: StopwordOptionsStatus -> ( { "Stopwords" :: (StopwordOptionsStatus) } -> {"Stopwords" :: (StopwordOptionsStatus) } ) -> UpdateStopwordOptionsResponse
newUpdateStopwordOptionsResponse' _Stopwords customize = (UpdateStopwordOptionsResponse <<< customize) { "Stopwords": _Stopwords }



newtype UpdateSynonymOptionsRequest = UpdateSynonymOptionsRequest 
  { "DomainName" :: (DomainName)
  , "Synonyms" :: (SynonymsDocument)
  }
derive instance newtypeUpdateSynonymOptionsRequest :: Newtype UpdateSynonymOptionsRequest _
derive instance repGenericUpdateSynonymOptionsRequest :: Generic UpdateSynonymOptionsRequest _
instance showUpdateSynonymOptionsRequest :: Show UpdateSynonymOptionsRequest where show = genericShow
instance decodeUpdateSynonymOptionsRequest :: Decode UpdateSynonymOptionsRequest where decode = genericDecode options
instance encodeUpdateSynonymOptionsRequest :: Encode UpdateSynonymOptionsRequest where encode = genericEncode options

-- | Constructs UpdateSynonymOptionsRequest from required parameters
newUpdateSynonymOptionsRequest :: DomainName -> SynonymsDocument -> UpdateSynonymOptionsRequest
newUpdateSynonymOptionsRequest _DomainName _Synonyms = UpdateSynonymOptionsRequest { "DomainName": _DomainName, "Synonyms": _Synonyms }

-- | Constructs UpdateSynonymOptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSynonymOptionsRequest' :: DomainName -> SynonymsDocument -> ( { "DomainName" :: (DomainName) , "Synonyms" :: (SynonymsDocument) } -> {"DomainName" :: (DomainName) , "Synonyms" :: (SynonymsDocument) } ) -> UpdateSynonymOptionsRequest
newUpdateSynonymOptionsRequest' _DomainName _Synonyms customize = (UpdateSynonymOptionsRequest <<< customize) { "DomainName": _DomainName, "Synonyms": _Synonyms }



-- | <p>A response message that contains the status of updated synonym options.</p>
newtype UpdateSynonymOptionsResponse = UpdateSynonymOptionsResponse 
  { "Synonyms" :: (SynonymOptionsStatus)
  }
derive instance newtypeUpdateSynonymOptionsResponse :: Newtype UpdateSynonymOptionsResponse _
derive instance repGenericUpdateSynonymOptionsResponse :: Generic UpdateSynonymOptionsResponse _
instance showUpdateSynonymOptionsResponse :: Show UpdateSynonymOptionsResponse where show = genericShow
instance decodeUpdateSynonymOptionsResponse :: Decode UpdateSynonymOptionsResponse where decode = genericDecode options
instance encodeUpdateSynonymOptionsResponse :: Encode UpdateSynonymOptionsResponse where encode = genericEncode options

-- | Constructs UpdateSynonymOptionsResponse from required parameters
newUpdateSynonymOptionsResponse :: SynonymOptionsStatus -> UpdateSynonymOptionsResponse
newUpdateSynonymOptionsResponse _Synonyms = UpdateSynonymOptionsResponse { "Synonyms": _Synonyms }

-- | Constructs UpdateSynonymOptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSynonymOptionsResponse' :: SynonymOptionsStatus -> ( { "Synonyms" :: (SynonymOptionsStatus) } -> {"Synonyms" :: (SynonymOptionsStatus) } ) -> UpdateSynonymOptionsResponse
newUpdateSynonymOptionsResponse' _Synonyms customize = (UpdateSynonymOptionsResponse <<< customize) { "Synonyms": _Synonyms }



newtype UpdateTimestamp = UpdateTimestamp Types.Timestamp
derive instance newtypeUpdateTimestamp :: Newtype UpdateTimestamp _
derive instance repGenericUpdateTimestamp :: Generic UpdateTimestamp _
instance showUpdateTimestamp :: Show UpdateTimestamp where show = genericShow
instance decodeUpdateTimestamp :: Decode UpdateTimestamp where decode = genericDecode options
instance encodeUpdateTimestamp :: Encode UpdateTimestamp where encode = genericEncode options

