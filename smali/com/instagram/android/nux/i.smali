.class final Lcom/instagram/android/nux/i;
.super Lcom/instagram/common/a/a/q;
.source "FacebookProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/q",
        "<",
        "Lcom/instagram/android/nux/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/h;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/nux/i;->a:Lcom/instagram/android/nux/h;

    invoke-direct {p0}, Lcom/instagram/common/a/a/q;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/nux/j;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/instagram/android/nux/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/nux/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/instagram/android/nux/i;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/nux/j;

    move-result-object v0

    return-object v0
.end method
