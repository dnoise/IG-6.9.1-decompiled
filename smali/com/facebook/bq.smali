.class final Lcom/facebook/bq;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/r;


# instance fields
.field final synthetic a:Lcom/facebook/bo;


# direct methods
.method constructor <init>(Lcom/facebook/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/facebook/bq;->a:Lcom/facebook/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/s;)V
    .locals 2
    .parameter

    .prologue
    .line 1093
    iget v0, p1, Lcom/facebook/s;->a:I

    sget v1, Lcom/facebook/t;->b:I

    if-ne v0, v1, :cond_0

    .line 1094
    const/4 v0, 0x0

    .line 1098
    :goto_0
    iget-object v1, p0, Lcom/facebook/bq;->a:Lcom/facebook/bo;

    invoke-static {v1, v0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/bo;ILcom/facebook/s;)V

    .line 1099
    return-void

    .line 1096
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
