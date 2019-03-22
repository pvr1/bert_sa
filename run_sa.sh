export BERT_BASE_DIR=/opt/bert/multi_cased_L-12_H-768_A-12
export SA_DIR=/opt/bert/bert_sa/bert_sa

python run_classifier.py \
      --task_name=sa \
      --do_train=true \
      --do_eval=true \
      --data_dir=$SA_DIR \
      --vocab_file=$BERT_BASE_DIR/vocab.txt \
      --bert_config_file=$BERT_BASE_DIR/bert_config.json \
      --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
      --max_seq_length=128 \
      --train_batch_size=32 \
      --learning_rate=5e-5 \
      --num_train_epochs=2 \
      --output_dir=/data/notebooks/xff/bert/output/sa_output/
                            
                            
                            
                    
