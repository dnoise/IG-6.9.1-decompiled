.class final Lcom/instagram/common/analytics/ae;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/ab;

    sget v1, Lcom/instagram/common/analytics/ar;->b:I

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;I)V

    .line 221
    return-void
.end method
