-- Please replace the second conditional to whatever you need to use
-- to limit which rows are updated for performance

-- FABS
UPDATE legal_entity
SET business_categories = compile_fabs_business_categories(
    tf.business_types
)
FROM transaction_fabs AS tf
WHERE is_fpds = FALSE AND
      legal_entity.transaction_unique_id = tf.afa_generated_unique;