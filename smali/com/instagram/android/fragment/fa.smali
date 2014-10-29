.class final Lcom/instagram/android/fragment/fa;
.super Lcom/instagram/api/j/f;
.source "SuggestedUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ey;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/instagram/android/fragment/fa;->a:Lcom/instagram/android/fragment/ey;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/android/fragment/fa;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->Z()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    .line 174
    return-void
.end method
