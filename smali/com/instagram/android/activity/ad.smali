.class final Lcom/instagram/android/activity/ad;
.super Ljava/lang/Object;
.source "XAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/activity/ad;->a:Lcom/instagram/android/activity/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/activity/ad;->a:Lcom/instagram/android/activity/ab;

    sget v1, Lcom/facebook/av;->followInstagram:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 54
    return-void
.end method
