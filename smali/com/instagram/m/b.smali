.class public Lcom/instagram/m/b;
.super Ljava/lang/Object;
.source "ExperimentParameter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/instagram/m/b;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/instagram/m/b;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/instagram/m/b;->c:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/m/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/m/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/m/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/instagram/m/j;->a()Lcom/instagram/m/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/m/i;->a(Lcom/instagram/m/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/instagram/m/j;->a()Lcom/instagram/m/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/m/i;->b(Lcom/instagram/m/b;)V

    .line 47
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/m/b;->f()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/instagram/m/b;->g()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/m/b;->g()V

    throw v0
.end method
