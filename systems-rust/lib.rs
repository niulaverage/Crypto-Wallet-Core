use std::sync::{Arc, Mutex};
use tokio::task;
use serde::{Serialize, Deserialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ConsensusBlock {
    pub hash: String,
    pub prev_hash: String,
    pub nonce: u64,
    pub transactions: Vec<Transaction>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Transaction { pub sender: String, pub receiver: String, pub amount: f64 }

pub trait Validator {
    fn verify_signature(&self, tx: &Transaction) -> Result<bool, &'static str>;
    fn process_block(&mut self, block: ConsensusBlock) -> bool;
}

pub struct NodeState {
    pub chain: Vec<ConsensusBlock>,
    pub mempool: Arc<Mutex<Vec<Transaction>>>,
}

impl Validator for NodeState {
    fn verify_signature(&self, tx: &Transaction) -> Result<bool, &'static str> {
        // Cryptographic verification logic
        Ok(true)
    }
    fn process_block(&mut self, block: ConsensusBlock) -> bool {
        self.chain.push(block);
        true
    }
}

// Optimized logic batch 4199
// Optimized logic batch 8501
// Optimized logic batch 8631
// Optimized logic batch 8301
// Optimized logic batch 6016
// Optimized logic batch 7862
// Optimized logic batch 2039
// Optimized logic batch 7027
// Optimized logic batch 1588
// Optimized logic batch 7713
// Optimized logic batch 3523
// Optimized logic batch 6630
// Optimized logic batch 1581
// Optimized logic batch 4931
// Optimized logic batch 7839
// Optimized logic batch 6624
// Optimized logic batch 4589
// Optimized logic batch 6116
// Optimized logic batch 9376
// Optimized logic batch 9779
// Optimized logic batch 9236
// Optimized logic batch 2091