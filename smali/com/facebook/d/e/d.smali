.class public final Lcom/facebook/d/e/d;
.super Ljava/lang/Object;
.source "ObjectPoolBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Lcom/facebook/d/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/e/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/d/g/a;

.field private final h:Lcom/facebook/d/e/e;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/facebook/d/g/a;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/d/g/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/d/e/d;-><init>(Ljava/lang/Class;Lcom/facebook/d/g/a;B)V

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/facebook/d/g/a;B)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/d/g/a;",
            "B)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/facebook/d/e/d;->b:I

    .line 14
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/d/e/d;->c:I

    .line 15
    iput v1, p0, Lcom/facebook/d/e/d;->d:I

    .line 16
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/facebook/d/e/d;->e:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/d/e/d;->h:Lcom/facebook/d/e/e;

    .line 34
    iput-object p1, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    .line 35
    iput-object p2, p0, Lcom/facebook/d/e/d;->g:Lcom/facebook/d/g/a;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/d/e/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/e/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/d/e/d;->g:Lcom/facebook/d/g/a;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must add a clock to the object pool builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v7, p0, Lcom/facebook/d/e/d;->f:Lcom/facebook/d/e/b;

    .line 97
    if-nez v7, :cond_1

    .line 98
    new-instance v7, Lcom/facebook/d/e/c;

    iget-object v0, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    invoke-direct {v7, v0}, Lcom/facebook/d/e/c;-><init>(Ljava/lang/Class;)V

    .line 100
    :cond_1
    new-instance v0, Lcom/facebook/d/e/a;

    iget-object v1, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    iget v2, p0, Lcom/facebook/d/e/d;->b:I

    iget v3, p0, Lcom/facebook/d/e/d;->c:I

    iget v4, p0, Lcom/facebook/d/e/d;->d:I

    iget-wide v5, p0, Lcom/facebook/d/e/d;->e:J

    iget-object v8, p0, Lcom/facebook/d/e/d;->g:Lcom/facebook/d/g/a;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/d/e/a;-><init>(Ljava/lang/Class;IIIJLcom/facebook/d/e/b;Lcom/facebook/d/g/a;)V

    .line 102
    iget-object v1, p0, Lcom/facebook/d/e/d;->h:Lcom/facebook/d/e/e;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/facebook/d/e/d;->h:Lcom/facebook/d/e/e;

    iget-object v2, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/d/e/e;->a(Ljava/lang/Class;Lcom/facebook/d/e/a;)V

    .line 105
    :cond_2
    return-object v0
.end method

.method public final a(Lcom/facebook/d/e/b;)Lcom/facebook/d/e/d;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/e/b",
            "<TT;>;)",
            "Lcom/facebook/d/e/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/d/e/d;->f:Lcom/facebook/d/e/b;

    .line 76
    return-object p0
.end method
