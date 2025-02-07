window.phx_bootstrap5components__activate_select2_widgets = function() {
    $('[data-bs5-select2-widget="true"]').each(
        function (_index, node) {
            // Extract configuration options from the HTML element
            var baseUrl = node.dataset.url;

            // Turn the node into a select2 box
            var _select2 = $(node).select2({
                theme: 'bootstrap-5',
                width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
                // Use AJAX to get JSON data from the server
                ajax: {
                    delay: 150,
                    url: baseUrl,
                    data: function (params) {
                        var query = {
                            search: params.term,
                            page: params.page || 1
                        }

                        // Query parameters will be ?search=[term]&page=[page]
                        return query;
                    }
                },
                placeholder: "",
                allowClear: false
            });
        }
    )
}

$(document).ready(window.phx_bootstrap5components__activate_select2_widgets);