class Contrato < ActiveRecord::Base

  VALOR_BASE = 10_000

  belongs_to :fiscalizacao, required: true, counter_cache: true
  belongs_to :fornecedor, required: true, counter_cache: true
  belongs_to :localidade, required: true, counter_cache: true
  belongs_to :situacao, required: true, counter_cache: true

  has_many :aditivos_prazo, dependent: :destroy
  has_many :aditivos_valor, dependent: :destroy
  has_many :medicoes, dependent: :destroy
  has_many :reajustes, dependent: :destroy

  validates :contrato, presence: true
  validates :data_inicial, presence: true
  validates :duracao_contrato_inicial, presence: true
  validates :multiplicador, presence: true, numericality: { greater_than: 0 }
  validates :objeto, presence: true

  validate :processo_administrativo_valido?

  delegate :nome, to: :fiscalizacao, prefix: true
  delegate :nome, to: :fornecedor, prefix: true
  delegate :nome, to: :situacao, prefix: true

  def valor_atual
    (valor_inicial + total_valor_aditivos + total_valor_reajustes) - total_medicoes
  end

  def percentual_aditivos
    (total_valor_aditivos / valor_inicial * 100).round(2)
  end

  def termino_execucao
    termino_contratual_sem_aditivo + total_aditivos_prazo.months
  end

  def prazo_restante_execucao
    (termino_execucao.to_date - Time.current.to_date).to_i
  end
  
  ...
  
  private
  
  def total_valor_aditivos
  end
  
  def total_valor_reajustes
  end
  
  def total_medicoes
  end
  
  ...
  
end
