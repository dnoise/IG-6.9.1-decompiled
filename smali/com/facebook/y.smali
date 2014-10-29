.class public final Lcom/facebook/y;
.super Lcom/facebook/z;
.source "FacebookDialogException.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lcom/facebook/y;->a:I

    .line 33
    iput-object p3, p0, Lcom/facebook/y;->b:Ljava/lang/String;

    .line 34
    return-void
.end method
