.class final Lcom/fasterxml/jackson/a/e/c;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:[Lcom/fasterxml/jackson/a/e/f;

.field public final e:[Lcom/fasterxml/jackson/a/e/b;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(I[I[Lcom/fasterxml/jackson/a/e/f;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->a:I

    .line 1131
    iput p1, p0, Lcom/fasterxml/jackson/a/e/c;->b:I

    .line 1132
    iput-object p2, p0, Lcom/fasterxml/jackson/a/e/c;->c:[I

    .line 1133
    iput-object p3, p0, Lcom/fasterxml/jackson/a/e/c;->d:[Lcom/fasterxml/jackson/a/e/f;

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->e:[Lcom/fasterxml/jackson/a/e/b;

    .line 1135
    iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->f:I

    .line 1136
    iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->g:I

    .line 1137
    iput v1, p0, Lcom/fasterxml/jackson/a/e/c;->h:I

    .line 1138
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/e/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->d:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->a:I

    .line 1143
    iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->f:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->b:I

    .line 1144
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e/a;->g:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->c:[I

    .line 1145
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e/a;->h:[Lcom/fasterxml/jackson/a/e/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->d:[Lcom/fasterxml/jackson/a/e/f;

    .line 1146
    iget-object v0, p1, Lcom/fasterxml/jackson/a/e/a;->i:[Lcom/fasterxml/jackson/a/e/b;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e/c;->e:[Lcom/fasterxml/jackson/a/e/b;

    .line 1147
    iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->j:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->f:I

    .line 1148
    iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->k:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->g:I

    .line 1149
    iget v0, p1, Lcom/fasterxml/jackson/a/e/a;->e:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e/c;->h:I

    .line 1150
    return-void
.end method
