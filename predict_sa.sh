export BERT_BASE_DIR=/opt/bert/multi_cased_L-12_H-768_A-12
export SA_DIR=/opt/bert/bert_sa/bert_sa/
export TRAINED_CLASSIFIER=/op/bert/bert_sa/bert_sa/sa_output/model.ckpt


/data/miniconda3/envs/tf1.11.0/bin/python run_classifier.py \
  --task_name=sa \
  --do_predict=true \
  --data_dir=$SA_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER \
  --max_seq_length=128 \
  --output_dir=/data/notebooks/xff/bert/output/sa_output/
                           
                            
                            
                    
