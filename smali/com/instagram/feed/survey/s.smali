.class final Lcom/instagram/feed/survey/s;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/j;

.field final synthetic b:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/instagram/feed/survey/s;->b:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/s;->a:Lcom/instagram/feed/survey/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/instagram/feed/survey/s;->a:Lcom/instagram/feed/survey/j;

    iget-object v1, p0, Lcom/instagram/feed/survey/s;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->e(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/g/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/j;Lcom/instagram/common/analytics/g;Z)V

    .line 335
    return-void
.end method
