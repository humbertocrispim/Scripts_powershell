import pandas as pd

# Ler os arquivos csv em dataframes
df1 = pd.read_csv('userdel.csv')
df2 = pd.read_csv('activeuser.csv')

print(df1.index.duplicated())
print(df2.index.duplicated())

# Remover os índices duplicados dos dataframes
df1 = df1[~df1.index.duplicated()]
df2 = df2[~df2.index.duplicated()]

# Reindexar os dataframes para usar os mesmos índices e colunas
df1 = df1.reindex_like(df2)
df2 = df2.reindex_like(df1)

# Comparar os dataframes
df_diff = df1.compare(df2)

# Imprimir as diferenças
print(df_diff)
